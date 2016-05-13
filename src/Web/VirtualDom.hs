
{-# LANGUAGE JavaScriptFFI, CPP, OverloadedStrings, BangPatterns #-}

{-|
Low level bindings to virtual-dom.

See https://github.com/Matt-Esch/virtual-dom/tree/master/docs

Supports:

  - Properties, attributes, nodes and text
  - Hooks
  - Node keys
  - Namespaced nodes
  - @create-element@, @diff@ and @patch@

Does currently not support:

  - Thunks
  - Widgets
  - Namespaced attributes
-}

module Web.VirtualDom
    (
    -- * Building the virtual DOM
    -- ** Nodes
      Node
    , text
    , node
    , nodeWithOptions
    , staticNode

    -- ** Properties
    , Property
    -- *** Properties vs. attributes
    -- $propsVsAttributes
    , property
    , attribute
    -- , attributeNS

    -- ** Events
    , on

    -- * Rendering to DOM
    , DOMNode
    , Patch
    , createElement
    , diff
    , patch

    -- ** Utility
    , appendToBody
    , renderingLoop
    , renderToString
    ) where

import Control.Monad(forM_, forever)
import Data.Monoid

import GHCJS.Types
import Data.JSString

import GHCJS.Foreign.Callback as CB
import qualified GHCJS.Foreign as F
import qualified JavaScript.Array as A
import qualified JavaScript.Object as O
import System.IO.Unsafe (unsafePerformIO)
import Data.IORef

-- TODO wrap these in newtypes

-- | A node in the virtual DOM.
newtype Node = Node { getNode :: JSVal }

-- | Propety of a node. Create using 'attribute' or 'property'.
data Property = Property !JSString !JSVal | Attribute !JSString !JSVal

-- | A node in the real DOM.

newtype DOMNode = DOMNode JSVal

-- | Difference between two virtual DOM nodes.
newtype Patch = Patch JSVal

-- | Create a text node.
--
-- https://github.com/Matt-Esch/virtual-dom/blob/master/docs/vtext.md#vtext
foreign import javascript "h$vdom.text($1)"
  text :: JSString -> Node

-- | Create a tree node.
--
-- https://github.com/Matt-Esch/virtual-dom/blob/master/docs/vnode.md#vnode
node
  :: JSString     -- ^ Tag name
  -> [Property]   -- ^ Properties
  -> [Node]       -- ^ Child nodes
  -> Node
node = nodeWithOptions Nothing Nothing

nodeWithOptions = nodeWithOptions' VNode

-- | Static node is just an ordinary node, just marked with metadata indicating that
-- virtual-dom should not modify it's content on patching. Implemented
-- as virtual-dom's widget.
staticNode :: JSString -> [Property] -> [Node] -> Node
staticNode = nodeWithOptions' VStaticNode Nothing Nothing

data VNodeVariant = VNode | VStaticNode

-- | Full version of 'node'. Useful whenever you need to set the XML namespace, as in the case of SVG.
nodeWithOptions'
  :: VNodeVariant     -- ^ Is this node static
  -> Maybe JSString   -- ^ Optional key
  -> Maybe JSString   -- ^ Optional namespace
  -> JSString         -- ^ Tag name
  -> [Property]       -- ^ Properties
  -> [Node]           -- ^ Child nodes
  -> Node
nodeWithOptions' !breed !key !namespace !tagName !properties !children = case breed of
    VNode       -> primNode       tagName p c (maybe F.jsUndefined jsval key) (maybe F.jsUndefined jsval namespace)
    VStaticNode -> primStNode tagName p c (maybe F.jsUndefined jsval key) (maybe F.jsUndefined jsval namespace)
  where
    c = jsval $ A.fromList $ fmap getNode children
    p = jsval $ unsafePerformIO $ do
      attrs <- O.create
      props <- O.create
      forM_ properties $ \prop -> case prop of
        Property k v  -> O.setProp k v props
        Attribute k v -> O.setProp k v attrs
      -- user is not expected to pass attributes not created using 'attribute' below
      O.setProp "attributes" (jsval attrs) props
      return props

foreign import javascript unsafe "h$vdom.node($1,$2,$3,$4,$5)"
  primNode :: JSString -> JSVal -> JSVal -> JSVal -> JSVal -> Node

foreign import javascript unsafe "h$vdom.staticNode($1, $2, $3, $4, $5)"
  primStNode :: JSString -> JSVal -> JSVal -> JSVal -> JSVal -> Node

-- $propsVsAttributes
--
-- When using HTML and JS, there are two ways to specify parts of a DOM node.
--
--   1. Attributes - You can set things in HTML itself. So the @class@
--      in @\<div class="greeting"\>\<\/div\>@ is called an /attribute/.
--
--   2. Properties - You can also set things in JS. So the @className@
--      in @div.className = 'greeting'@ is called a /property/.
--
-- So the @class@ attribute corresponds to the @className@ property.

-- | A virtual node /property/.
--
-- You can give any JavaScript object accepted by virtual-dom as the value,
-- including event callbacks and hooks. See the virtual-dom documentation for details.
--
property :: JSString -> JSVal -> Property
property = Property

-- | A virtual node /attribute/.
--
-- Map to @setAttribute@ in JavaScript.
attribute :: JSString -> JSString -> Property
attribute n x = Attribute n (jsval x)

-- attributeNS :: JSString -> JSString -> JSString -> Property
-- We need to use a hook to set namespace on attributes
-- This is mostly used for exotic stuff such as xlink

-- |
-- An event listener as a property.
--
-- @
-- on "click" $ \\_ -> print "Clicked!"
-- @
--
-- First argument is attribute name without 'on'.
--
-- For a list of listener attributes, see:
--
-- * http://www.w3schools.com/tags/ref_eventattributes.asp
-- * https://www.w3.org/TR/SVG/interact.html#SVGEvents
--
on :: JSString -> (JSVal -> IO ()) -> Property
on n k = property ("on" <> n) $ wrap k
  where
    -- TODO this will leak everything referenced by the callback.
    wrap k = unsafePerformIO $ do
      -- cb <- CB.asyncCallback1 k
      cb <- CB.syncCallback1 CB.ThrowWouldBlock k
      return $ jsval cb


-- | Create a real DOM tree from a virtual DOM tree.
--
-- https://github.com/Matt-Esch/virtual-dom#element-creation
foreign import javascript unsafe "h$vdom.createElement($1)"
  createElement :: Node -> IO DOMNode

foreign import javascript unsafe "$1.innerHTML"
  innerHTML :: DOMNode -> IO JSString

renderToString :: Node -> IO JSString
renderToString n = do
  x <- createElement n
  y <- innerHTML x
  -- TODO delete DOMNode x?
  return y

-- | Compute the difference between two virtual DOM trees.
--
-- https://github.com/Matt-Esch/virtual-dom#diff-computation
foreign import javascript unsafe "h$vdom.diff($1,$2)"
  diff :: Node -> Node -> IO Patch

-- | Apply patches to a DOM tree.
--
-- https://github.com/Matt-Esch/virtual-dom#patch-operations
foreign import javascript unsafe "h$vdom.patch($1,$2)"
  patch :: DOMNode -> Patch -> IO DOMNode

-- | Append the given node to @document.body@.
foreign import javascript unsafe "document.body.appendChild($1);"
  appendToBody :: DOMNode -> IO ()

-- | Repeatedly call the given function to produce a VDOM, then patch it into the given DOM node.
renderingLoop :: (DOMNode -> IO ()) -> IO Node -> IO ()
renderingLoop insertFirstDN k = do
  n1  <- k
  dn1 <- createElement n1
  nV  <- newIORef n1
  dnV <- newIORef dn1

  insertFirstDN dn1

  forever $ do
      newNode <- k
      oldNode <- readIORef nV

      delta <- diff oldNode newNode

      oldDomNode <- readIORef dnV
      newDomNode <- patch oldDomNode delta

      writeIORef nV newNode
      writeIORef dnV newDomNode
