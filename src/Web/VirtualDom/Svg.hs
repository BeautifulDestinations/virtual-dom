
{-# LANGUAGE OverloadedStrings #-}

{-|
Create SVG elements based on virtual DOM.
-}
module Web.VirtualDom.Svg
    ( Svg
    , Property
    , text
    , node
    -- * Specific

    ) where

import Prelude hiding (div, span)
import Data.JSString hiding (span)
import qualified Web.VirtualDom as VirtualDom

-- | A node representing a HTML element.
type Svg = VirtualDom.Node

-- | A property or attribute in an HTML tree.
--
-- See:
--
-- * "Web.VirtualDom.Svg.Attributes"
-- * "Web.VirtualDom.Svg.Events"
--
type Property = VirtualDom.Property


{-| Create any SVG node. To create a `<rect>` helper function, you would write:
    rect :: [Property] -> [Svg] -> Svg
    rect attributes children =
        node "rect" attributes children
You should always be able to use the helper functions already defined in this
library though!
-}
node :: JSString -> [Property] -> [Svg] -> Svg
node = VirtualDom.nodeWithOptions Nothing (Just svgNamespace)
  where
   svgNamespace = "http://www.w3.org/2000/svg"

{-| A simple text node, no tags at all.
Warning: not to be confused with `text'` which produces the SVG `<text>` tag!
-}
text :: JSString -> Svg
text = VirtualDom.text


{-| The root `<svg>` node for any SVG scene. This example shows a scene
containing a rounded rectangle:

@
    import Html
    import Svg exposing (..)
    import Svg.Attributes exposing (..)
    roundRect :: Svg
    roundRect =
        svg
          [ width "120", height "120", viewBox "0 0 120 120" ]
          [ rect [ x "10", y "10", width "100", height "100", rx "15", ry "15" ] [] ]
@
-}
svg :: [Property] -> [Svg] -> Svg
svg =
  node "svg"


{-|-}
foreignObject :: [Property] -> [Svg] -> Svg
foreignObject =
  node "foreignObject"


-- Animation elements

{-|-}
animate :: [Property] -> [Svg] -> Svg
animate =
  node "animate"


{-|-}
animateColor :: [Property] -> [Svg] -> Svg
animateColor =
  node "animateColor"


{-|-}
animateMotion :: [Property] -> [Svg] -> Svg
animateMotion =
  node "animateMotion"


{-|-}
animateTransform :: [Property] -> [Svg] -> Svg
animateTransform =
  node "animateTransform"


{-|-}
mpath :: [Property] -> [Svg] -> Svg
mpath =
  node "mpath"


{-|-}
set :: [Property] -> [Svg] -> Svg
set =
  node "set"


-- Container elements

{-| The SVG Anchor Element defines a hyperlink.
-}
{-|-}
a :: [Property] -> [Svg] -> Svg
a =
  node "a"


{-|-}
defs :: [Property] -> [Svg] -> Svg
defs =
  node "defs"


{-|-}
g :: [Property] -> [Svg] -> Svg
g =
  node "g"


{-|-}
marker :: [Property] -> [Svg] -> Svg
marker =
  node "marker"


{-|-}
mask :: [Property] -> [Svg] -> Svg
mask =
  node "mask"


{-|-}
missingGlyph :: [Property] -> [Svg] -> Svg
missingGlyph =
  node "missingGlyph"


{-|-}
pattern :: [Property] -> [Svg] -> Svg
pattern =
  node "pattern"


{-|-}
switch :: [Property] -> [Svg] -> Svg
switch =
  node "switch"


{-|-}
symbol :: [Property] -> [Svg] -> Svg
symbol =
  node "symbol"



-- Descriptive elements

{-|-}
desc :: [Property] -> [Svg] -> Svg
desc =
  node "desc"


{-|-}
metadata :: [Property] -> [Svg] -> Svg
metadata =
  node "metadata"


{-|-}
title :: [Property] -> [Svg] -> Svg
title =
  node "title"



-- Filter primitive elements

{-|-}
feBlend :: [Property] -> [Svg] -> Svg
feBlend =
  node "feBlend"


{-|-}
feColorMatrix :: [Property] -> [Svg] -> Svg
feColorMatrix =
  node "feColorMatrix"


{-|-}
feComponentTransfer :: [Property] -> [Svg] -> Svg
feComponentTransfer =
  node "feComponentTransfer"


{-|-}
feComposite :: [Property] -> [Svg] -> Svg
feComposite =
  node "feComposite"


{-|-}
feConvolveMatrix :: [Property] -> [Svg] -> Svg
feConvolveMatrix =
  node "feConvolveMatrix"


{-|-}
feDiffuseLighting :: [Property] -> [Svg] -> Svg
feDiffuseLighting =
  node "feDiffuseLighting"


{-|-}
feDisplacementMap :: [Property] -> [Svg] -> Svg
feDisplacementMap =
  node "feDisplacementMap"


{-|-}
feFlood :: [Property] -> [Svg] -> Svg
feFlood =
  node "feFlood"


{-|-}
feFuncA :: [Property] -> [Svg] -> Svg
feFuncA =
  node "feFuncA"


{-|-}
feFuncB :: [Property] -> [Svg] -> Svg
feFuncB =
  node "feFuncB"


{-|-}
feFuncG :: [Property] -> [Svg] -> Svg
feFuncG =
  node "feFuncG"


{-|-}
feFuncR :: [Property] -> [Svg] -> Svg
feFuncR =
  node "feFuncR"


{-|-}
feGaussianBlur :: [Property] -> [Svg] -> Svg
feGaussianBlur =
  node "feGaussianBlur"


{-|-}
feImage :: [Property] -> [Svg] -> Svg
feImage =
  node "feImage"


{-|-}
feMerge :: [Property] -> [Svg] -> Svg
feMerge =
  node "feMerge"


{-|-}
feMergeNode :: [Property] -> [Svg] -> Svg
feMergeNode =
  node "feMergeNode"


{-|-}
feMorphology :: [Property] -> [Svg] -> Svg
feMorphology =
  node "feMorphology"


{-|-}
feOffset :: [Property] -> [Svg] -> Svg
feOffset =
  node "feOffset"


{-|-}
feSpecularLighting :: [Property] -> [Svg] -> Svg
feSpecularLighting =
  node "feSpecularLighting"


{-|-}
feTile :: [Property] -> [Svg] -> Svg
feTile =
  node "feTile"


{-|-}
feTurbulence :: [Property] -> [Svg] -> Svg
feTurbulence =
  node "feTurbulence"



-- Font elements

{-|-}
font :: [Property] -> [Svg] -> Svg
font =
  node "font"


{-|-}
fontFace :: [Property] -> [Svg] -> Svg
fontFace =
  node "fontFace"


{-|-}
fontFaceFormat :: [Property] -> [Svg] -> Svg
fontFaceFormat =
  node "fontFaceFormat"


{-|-}
fontFaceName :: [Property] -> [Svg] -> Svg
fontFaceName =
  node "fontFaceName"


{-|-}
fontFaceSrc :: [Property] -> [Svg] -> Svg
fontFaceSrc =
  node "fontFaceSrc"


{-|-}
fontFaceUri :: [Property] -> [Svg] -> Svg
fontFaceUri =
  node "fontFaceUri"


{-|-}
hkern :: [Property] -> [Svg] -> Svg
hkern =
  node "hkern"


{-|-}
vkern :: [Property] -> [Svg] -> Svg
vkern =
  node "vkern"



-- Gradient elements

{-|-}
linearGradient :: [Property] -> [Svg] -> Svg
linearGradient =
  node "linearGradient"


{-|-}
radialGradient :: [Property] -> [Svg] -> Svg
radialGradient =
  node "radialGradient"


{-|-}
stop :: [Property] -> [Svg] -> Svg
stop =
  node "stop"



-- Graphics elements

{-| The circle element is an SVG basic shape, used to create circles based on
a center point and a radius.
  circle [ cx "60", cy "60", r "50" ] []
-}
{-|-}
circle :: [Property] -> [Svg] -> Svg
circle =
  node "circle"


{-|-}
ellipse :: [Property] -> [Svg] -> Svg
ellipse =
  node "ellipse"


{-|-}
image :: [Property] -> [Svg] -> Svg
image =
  node "image"


{-|-}
line :: [Property] -> [Svg] -> Svg
line =
  node "line"


{-|-}
path :: [Property] -> [Svg] -> Svg
path =
  node "path"


{-|-}
polygon :: [Property] -> [Svg] -> Svg
polygon =
  node "polygon"


{-| The polyline element is an SVG basic shape, used to create a series of
straight lines connecting several points. Typically a polyline is used to
create open shapes.
  polyline [ fill "none", stroke "black", points "20,100 40,60 70,80 100,20" ] []
-}
{-|-}
polyline :: [Property] -> [Svg] -> Svg
polyline =
  node "polyline"


{-|-}
rect :: [Property] -> [Svg] -> Svg
rect =
  node "rect"


{-|-}
use :: [Property] -> [Svg] -> Svg
use =
  node "use"



-- Light source elements

{-|-}
feDistantLight :: [Property] -> [Svg] -> Svg
feDistantLight =
  node "feDistantLight"


{-|-}
fePointLight :: [Property] -> [Svg] -> Svg
fePointLight =
  node "fePointLight"


{-|-}
feSpotLight :: [Property] -> [Svg] -> Svg
feSpotLight =
  node "feSpotLight"


-- Text content elements

{-|-}
altGlyph :: [Property] -> [Svg] -> Svg
altGlyph =
  node "altGlyph"


{-|-}
altGlyphDef :: [Property] -> [Svg] -> Svg
altGlyphDef =
  node "altGlyphDef"


{-|-}
altGlyphItem :: [Property] -> [Svg] -> Svg
altGlyphItem =
  node "altGlyphItem"


{-|-}
glyph :: [Property] -> [Svg] -> Svg
glyph =
  node "glyph"


{-|-}
glyphRef :: [Property] -> [Svg] -> Svg
glyphRef =
  node "glyphRef"


{-|-}
textPath :: [Property] -> [Svg] -> Svg
textPath =
  node "textPath"


{-|-}
text' :: [Property] -> [Svg] -> Svg
text' =
  node "text"


{-|-}
tref :: [Property] -> [Svg] -> Svg
tref =
  node "tref"


{-|-}
tspan :: [Property] -> [Svg] -> Svg
tspan =
  node "tspan"


-- Uncategorized elements

{-|-}
clipPath :: [Property] -> [Svg] -> Svg
clipPath =
  node "clipPath"


{-|-}
colorProfile :: [Property] -> [Svg] -> Svg
colorProfile =
  node "colorProfile"


{-|-}
cursor :: [Property] -> [Svg] -> Svg
cursor =
  node "cursor"


{-|-}
filter :: [Property] -> [Svg] -> Svg
filter =
  node "filter"


{-|-}
script :: [Property] -> [Svg] -> Svg
script =
  node "script"


{-|-}
style :: [Property] -> [Svg] -> Svg
style =
  node "style"


{-|-}
view :: [Property] -> [Svg] -> Svg
view =
  node "view"
