
{-# LANGUAGE JavaScriptFFI, CPP, OverloadedStrings #-}

{-|
Low level bindings to virtual-dom.

See https://github.com/Matt-Esch/virtual-dom/tree/master/docs

Supports:

  - @create-element@, @diff@ and @patch@
  - @VNode@, @VText@ and @Hooks@
  - Namespaces

Does currently not support:

  - Thunks
  - Widgets
  - Namespaced attributes
  - VNode keys

-}

module Web.VirtualDom
    --  ** Nodes and properties
    ( Node
    , Property
    , node
    , node'
    , text
    , attribute
    -- , attributeNS
    , property
    , on

    -- ** Rendering to DOM
    , DOMNode
    , Patch
    , createElement
    , diff
    , patch

    , utilPutInBody
    ) where

import Control.Monad(forM_)
import GHCJS.Types
import Data.JSString
import qualified GHCJS.Foreign as F
import qualified JavaScript.Array as A
import qualified JavaScript.Object as O
import System.IO.Unsafe (unsafePerformIO)

-- TODO wrap these in newtypes

-- | Virtual DOM node, aka VTree.
-- https://github.com/Matt-Esch/virtual-dom/blob/master/docs/vtext.md
-- https://github.com/Matt-Esch/virtual-dom/blob/master/docs/vnode.md
type Node = JSVal

-- note that (Property "attributes") is overwritten here!
data Property = Property JSString JSVal | Attribute JSString JSVal

-- | A DOM node.
type DOMNode = JSVal
-- | Difference between DOM nodes, aka PatchObject.
type Patch = JSVal

foreign import javascript "h$vdom.text($1)"
  text :: JSString -> Node

-- | tagName properties nodes
node :: JSString -> [Property] -> [Node] -> Node
node = node' Nothing Nothing

-- | key? namespace? tagName properties nodes
node' :: Maybe JSString -> Maybe JSString -> JSString -> [Property] -> [Node] -> Node
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

{-
basically, we need to call
  return new VNode(tagName, props, contents, key, namespace);

  tagName is name of node (h1, div etc)
  props is the list of properties
    all attributes should be a in the subobject props.attributes

  children is self-explanatory
  key and namespace are "special" properties


-}




property :: JSString -> JSVal -> Property
property = Property

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
  utilPutInBody :: DOMNode -> IO ()





  -- //
  -- // data Options =
  -- //     { stopPropagation : Bool
  -- //     , preventDefault : Bool }
  -- //
