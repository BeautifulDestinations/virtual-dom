
{-# LANGUAGE JavaScriptFFI, CPP, OverloadedStrings #-}

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
    , node'

    -- ** Properties
    , Property
    -- *** Properties and attributes
    -- $propsVsAttributes
    , property
    , attribute
    -- , attributeNS
    , on

    -- * Rendering to DOM
    , DOMNode
    , Patch
    , createElement
    , diff
    , patch

    -- ** Utility
    , appendToBody
    ) where

import Control.Monad(forM_)
import GHCJS.Types
import Data.JSString
import qualified GHCJS.Foreign as F
import qualified JavaScript.Array as A
import qualified JavaScript.Object as O
import System.IO.Unsafe (unsafePerformIO)

-- TODO wrap these in newtypes

-- | A node in the virtual DOM.
type Node = JSVal

-- | Propety of a node. Create using 'attribute' or 'property'.
data Property = Property JSString JSVal | Attribute JSString JSVal

-- | A node in the real DOM.

type DOMNode = JSVal

-- | Difference between two virtual DOM nodes.
type Patch = JSVal

-- | Create a text node.
foreign import javascript "h$vdom.text($1)"
  text :: JSString -> Node

-- | Create a node from a name and list of properties and children.
node
  :: JSString     -- ^ Tag name
  -> [Property]   -- ^ Properties
  -> [Node]       -- ^ Child nodes
  -> Node
node = node' Nothing Nothing

-- | Full version of 'node'.
-- Useful if you need to set the XML namespace, as in the case of SVG.
node'
  :: Maybe JSString   -- ^ Optional key
  -> Maybe JSString   -- ^ Optional namespace
  -> JSString         -- ^ Tag name
  -> [Property]       -- ^ Properties
  -> [Node]           -- ^ Child nodes
  -> Node
node' key namespace tagName properties children =
  primNode tagName p c (maybe F.jsUndefined jsval key) (maybe F.jsUndefined jsval namespace)
  where
    c = jsval $ A.fromList children
    p = jsval $ unsafePerformIO $ do
      attrs <- O.create
      props <- O.create
      forM_ properties $ \p -> case p of
        Property k v  -> O.setProp k v props
        Attribute k v -> O.setProp k v attrs
      -- user is not expected to pass attributes not created using 'attribute' below
      O.setProp "attributes" (jsval attrs) props
      return props

foreign import javascript unsafe "h$vdom.node($1,$2,$3,$4,$5)"
  primNode :: JSString -> JSVal -> JSVal -> JSVal -> JSVal -> Node

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

-- TODO wrap with decoder, allow Options as per below
on :: JSString -> (JSVal -> IO ()) -> Property
[on] = undefined


foreign import javascript unsafe "h$vdom.createElement($1)"
  createElement :: Node -> IO DOMNode

foreign import javascript unsafe "h$vdom.diff($1,$2)"
  diff :: Node -> Node -> IO Patch

foreign import javascript unsafe "h$vdom.patch($1,$2)"
  patch :: DOMNode -> Patch -> IO DOMNode

foreign import javascript unsafe "document.body.appendChild($1);"
  appendToBody :: DOMNode -> IO ()
