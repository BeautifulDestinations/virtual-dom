
{-# LANGUAGE JavaScriptFFI, CPP, OverloadedStrings #-}

module Web.VirtualDom
    ( Node
    , Property
    , DOMNode
    , Patch
    , node
    , text
    , attribute
    , attributeNS
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
type Node = JSVal
type Property = JSVal
type DOMNode = JSVal
-- | Difference between DOM nodes, aka PatchObject.
type Patch = JSVal

node :: JSString -> [Property] -> [Node] -> Node
foreign import javascript "h$vdom.text($1)"
  text :: JSString -> Node
property :: JSString -> JSVal -> Property
attribute :: JSString -> JSString -> Property
attributeNS :: JSString -> JSString -> JSString -> Property

-- TODO wrap with decoder, allow Options as per below
on :: JSString -> (JSVal -> IO ()) -> Property

foreign import javascript unsafe "document.body.appendChild($1);"
  utilPutInBody :: DOMNode -> IO ()

foreign import javascript unsafe "h$vdom.createElement($1)"
  createElement :: Node -> IO DOMNode

foreign import javascript unsafe "h$vdom.diff($1,$2)"
  diff :: Node -> Node -> IO Patch

foreign import javascript unsafe "h$vdom.patch($1,$2)"
  patch :: DOMNode -> Patch -> IO DOMNode



[node, property, attribute, attributeNS, on] = undefined


  -- //
  -- // data Options =
  -- //     { stopPropagation : Bool
  -- //     , preventDefault : Bool }
  -- //
