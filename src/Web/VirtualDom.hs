
{-# LANGUAGE JavaScriptFFI, CPP, OverloadedStrings #-}

{-
Low level bindings to virtual-dom.

See https://github.com/Matt-Esch/virtual-dom/tree/master/docs

Supports:

  - @create-element@, @diff@ and @patch@
  - @VNode@, @VText@ and @Hooks@

Does currently not support:

  - Thunks
  - Widgets
  - Namespaced attributes

-}

module Web.VirtualDom
    ( Node
    , Property
    , DOMNode
    , Patch
    , node
    , text
    , attribute
    -- , attributeNS
    , on
    , createElement
    , diff
    , patch

    , utilPutInBody
    ) where

import GHCJS.Types
import Data.JSString

-- TODO wrap these in newtypes

-- | Virtual DOM node, aka VTree.
-- https://github.com/Matt-Esch/virtual-dom/blob/master/docs/vtext.md
-- https://github.com/Matt-Esch/virtual-dom/blob/master/docs/vnode.md
type Node = JSVal

type Property = JSVal

-- | A DOM node.
type DOMNode = JSVal
-- | Difference between DOM nodes, aka PatchObject.
type Patch = JSVal

foreign import javascript "h$vdom.text($1)"
  text :: JSString -> Node

node :: JSString -> [Property] -> [Node] -> Node
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
attribute :: JSString -> JSString -> Property

-- attributeNS :: JSString -> JSString -> JSString -> Property
-- We need to use a hook to set namespace on attributes
-- This is mostly used for exotic stuff such as xlink

-- TODO wrap with decoder, allow Options as per below
on :: JSString -> (JSVal -> IO ()) -> Property

[node, property, attribute, on] = undefined




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
