
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
    ) where

import GHCJS.Types
import Data.JSString

-- | Virtual DOM node, aka VTree.
data Node
data Property
data DOMNode
-- | Difference between DOM nodes, aka PatchObject.
data Patch

node :: JSString -> [Property] -> [Node] -> Node
text :: JSString -> Node
property :: JSString -> JSVal -> Property
attribute :: JSString -> JSString -> Property
attributeNS :: JSString -> JSString -> JSString -> Property

-- TODO wrap with decoder, allow Options as per below
on :: JSString -> (JSVal -> IO ()) -> Property

createElement :: Node -> IO DOMNode
diff :: Node -> Node -> IO Patch
patch :: DOMNode -> Patch -> IO DOMNode

[node, text, property, attribute, attributeNS, on, createElement, diff, patch] = undefined


  -- //
  -- // data Options =
  -- //     { stopPropagation : Bool
  -- //     , preventDefault : Bool }
  -- //
