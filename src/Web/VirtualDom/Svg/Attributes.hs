
{-# LANGUAGE OverloadedStrings, NoMonomorphismRestriction #-}

module Web.VirtualDom.Svg.Attributes
    -- (
    -- )
    where

import Prelude hiding (id, min, max)
import Data.JSString

import Web.VirtualDom.Svg (Property)
import qualified Web.VirtualDom as VirtualDom


-- Regular attributes

{-|-}
accentHeight :: JSString -> Attribute
accentHeight =
  attribute "accent-height"


{-|-}
accelerate :: JSString -> Attribute
accelerate =
  attribute "accelerate"


{-|-}
accumulate :: JSString -> Attribute
accumulate =
  attribute "accumulate"


{-|-}
additive :: JSString -> Attribute
additive =
  attribute "additive"


{-|-}
alphabetic :: JSString -> Attribute
alphabetic =
  attribute "alphabetic"


{-|-}
allowReorder :: JSString -> Attribute
allowReorder =
  attribute "allowReorder"


{-|-}
amplitude :: JSString -> Attribute
amplitude =
  attribute "amplitude"


{-|-}
arabicForm :: JSString -> Attribute
arabicForm =
  attribute "arabic-form"


{-|-}
ascent :: JSString -> Attribute
ascent =
  attribute "ascent"


{-|-}
attributeName :: JSString -> Attribute
attributeName =
  attribute "attributeName"


{-|-}
attributeType :: JSString -> Attribute
attributeType =
  attribute "attributeType"


{-|-}
autoReverse :: JSString -> Attribute
autoReverse =
  attribute "autoReverse"


{-|-}
azimuth :: JSString -> Attribute
azimuth =
  attribute "azimuth"


{-|-}
baseFrequency :: JSString -> Attribute
baseFrequency =
  attribute "baseFrequency"


{-|-}
baseProfile :: JSString -> Attribute
baseProfile =
  attribute "baseProfile"


{-|-}
bbox :: JSString -> Attribute
bbox =
  attribute "bbox"


{-|-}
begin :: JSString -> Attribute
begin =
  attribute "begin"


{-|-}
bias :: JSString -> Attribute
bias =
  attribute "bias"


{-|-}
by :: JSString -> Attribute
by =
  attribute "by"


{-|-}
calcMode :: JSString -> Attribute
calcMode =
  attribute "calcMode"


{-|-}
capHeight :: JSString -> Attribute
capHeight =
  attribute "cap-height"


{-|-}
class_ :: JSString -> Attribute
class_ =
  attribute "class"


{-|-}
clipPathUnits :: JSString -> Attribute
clipPathUnits =
  attribute "clipPathUnits"


{-|-}
contentScriptType :: JSString -> Attribute
contentScriptType =
  attribute "contentScriptType"


{-|-}
contentStyleType :: JSString -> Attribute
contentStyleType =
  attribute "contentStyleType"


{-|-}
cx :: JSString -> Attribute
cx =
  attribute "cx"


{-|-}
cy :: JSString -> Attribute
cy =
  attribute "cy"


{-|-}
d :: JSString -> Attribute
d =
  attribute "d"


{-|-}
decelerate :: JSString -> Attribute
decelerate =
  attribute "decelerate"


{-|-}
descent :: JSString -> Attribute
descent =
  attribute "descent"


{-|-}
diffuseConstant :: JSString -> Attribute
diffuseConstant =
  attribute "diffuseConstant"


{-|-}
divisor :: JSString -> Attribute
divisor =
  attribute "divisor"


{-|-}
dur :: JSString -> Attribute
dur =
  attribute "dur"


{-|-}
dx :: JSString -> Attribute
dx =
  attribute "dx"


{-|-}
dy :: JSString -> Attribute
dy =
  attribute "dy"


{-|-}
edgeMode :: JSString -> Attribute
edgeMode =
  attribute "edgeMode"


{-|-}
elevation :: JSString -> Attribute
elevation =
  attribute "elevation"


{-|-}
end :: JSString -> Attribute
end =
  attribute "end"


{-|-}
exponent :: JSString -> Attribute
exponent =
  attribute "exponent"


{-|-}
externalResourcesRequired :: JSString -> Attribute
externalResourcesRequired =
  attribute "externalResourcesRequired"


{-|-}
filterRes :: JSString -> Attribute
filterRes =
  attribute "filterRes"


{-|-}
filterUnits :: JSString -> Attribute
filterUnits =
  attribute "filterUnits"


{-|-}
format :: JSString -> Attribute
format =
  attribute "format"


{-|-}
from :: JSString -> Attribute
from =
  attribute "from"


{-|-}
fx :: JSString -> Attribute
fx =
  attribute "fx"


{-|-}
fy :: JSString -> Attribute
fy =
  attribute "fy"


{-|-}
g1 :: JSString -> Attribute
g1 =
  attribute "g1"


{-|-}
g2 :: JSString -> Attribute
g2 =
  attribute "g2"


{-|-}
glyphName :: JSString -> Attribute
glyphName =
  attribute "glyph-name"


{-|-}
glyphRef :: JSString -> Attribute
glyphRef =
  attribute "glyphRef"


{-|-}
gradientTransform :: JSString -> Attribute
gradientTransform =
  attribute "gradientTransform"


{-|-}
gradientUnits :: JSString -> Attribute
gradientUnits =
  attribute "gradientUnits"


{-|-}
hanging :: JSString -> Attribute
hanging =
  attribute "hanging"


{-|-}
height :: JSString -> Attribute
height =
  attribute "height"


{-|-}
horizAdvX :: JSString -> Attribute
horizAdvX =
  attribute "horiz-adv-x"


{-|-}
horizOriginX :: JSString -> Attribute
horizOriginX =
  attribute "horiz-origin-x"


{-|-}
horizOriginY :: JSString -> Attribute
horizOriginY =
  attribute "horiz-origin-y"


{-|-}
id :: JSString -> Attribute
id =
  attribute "id"


{-|-}
ideographic :: JSString -> Attribute
ideographic =
  attribute "ideographic"


{-|-}
in' :: JSString -> Attribute
in' =
  attribute "in"


{-|-}
in2 :: JSString -> Attribute
in2 =
  attribute "in2"


{-|-}
intercept :: JSString -> Attribute
intercept =
  attribute "intercept"


{-|-}
k :: JSString -> Attribute
k =
  attribute "k"


{-|-}
k1 :: JSString -> Attribute
k1 =
  attribute "k1"


{-|-}
k2 :: JSString -> Attribute
k2 =
  attribute "k2"


{-|-}
k3 :: JSString -> Attribute
k3 =
  attribute "k3"


{-|-}
k4 :: JSString -> Attribute
k4 =
  attribute "k4"


{-|-}
kernelMatrix :: JSString -> Attribute
kernelMatrix =
  attribute "kernelMatrix"


{-|-}
kernelUnitLength :: JSString -> Attribute
kernelUnitLength =
  attribute "kernelUnitLength"


{-|-}
keyPoints :: JSString -> Attribute
keyPoints =
  attribute "keyPoints"


{-|-}
keySplines :: JSString -> Attribute
keySplines =
  attribute "keySplines"


{-|-}
keyTimes :: JSString -> Attribute
keyTimes =
  attribute "keyTimes"


{-|-}
lang :: JSString -> Attribute
lang =
  attribute "lang"


{-|-}
lengthAdjust :: JSString -> Attribute
lengthAdjust =
  attribute "lengthAdjust"


{-|-}
limitingConeAngle :: JSString -> Attribute
limitingConeAngle =
  attribute "limitingConeAngle"


{-|-}
local :: JSString -> Attribute
local =
  attribute "local"


{-|-}
markerHeight :: JSString -> Attribute
markerHeight =
  attribute "markerHeight"


{-|-}
markerUnits :: JSString -> Attribute
markerUnits =
  attribute "markerUnits"


{-|-}
markerWidth :: JSString -> Attribute
markerWidth =
  attribute "markerWidth"


{-|-}
maskContentUnits :: JSString -> Attribute
maskContentUnits =
  attribute "maskContentUnits"


{-|-}
maskUnits :: JSString -> Attribute
maskUnits =
  attribute "maskUnits"


{-|-}
mathematical :: JSString -> Attribute
mathematical =
  attribute "mathematical"


{-|-}
max :: JSString -> Attribute
max =
  attribute "max"


{-|-}
media :: JSString -> Attribute
media =
  attribute "media"


{-|-}
method :: JSString -> Attribute
method =
  attribute "method"


{-|-}
min :: JSString -> Attribute
min =
  attribute "min"


{-|-}
mode :: JSString -> Attribute
mode =
  attribute "mode"


{-|-}
name :: JSString -> Attribute
name =
  attribute "name"


{-|-}
numOctaves :: JSString -> Attribute
numOctaves =
  attribute "numOctaves"


{-|-}
offset :: JSString -> Attribute
offset =
  attribute "offset"


{-|-}
operator :: JSString -> Attribute
operator =
  attribute "operator"


{-|-}
order :: JSString -> Attribute
order =
  attribute "order"


{-|-}
orient :: JSString -> Attribute
orient =
  attribute "orient"


{-|-}
orientation :: JSString -> Attribute
orientation =
  attribute "orientation"


{-|-}
origin :: JSString -> Attribute
origin =
  attribute "origin"


{-|-}
overlinePosition :: JSString -> Attribute
overlinePosition =
  attribute "overline-position"


{-|-}
overlineThickness :: JSString -> Attribute
overlineThickness =
  attribute "overline-thickness"


{-|-}
panose1 :: JSString -> Attribute
panose1 =
  attribute "panose-1"


{-|-}
path :: JSString -> Attribute
path =
  attribute "path"


{-|-}
pathLength :: JSString -> Attribute
pathLength =
  attribute "pathLength"


{-|-}
patternContentUnits :: JSString -> Attribute
patternContentUnits =
  attribute "patternContentUnits"


{-|-}
patternTransform :: JSString -> Attribute
patternTransform =
  attribute "patternTransform"


{-|-}
patternUnits :: JSString -> Attribute
patternUnits =
  attribute "patternUnits"


{-|-}
pointOrder :: JSString -> Attribute
pointOrder =
  attribute "point-order"


{-|-}
points :: JSString -> Attribute
points =
  attribute "points"


{-|-}
pointsAtX :: JSString -> Attribute
pointsAtX =
  attribute "pointsAtX"


{-|-}
pointsAtY :: JSString -> Attribute
pointsAtY =
  attribute "pointsAtY"


{-|-}
pointsAtZ :: JSString -> Attribute
pointsAtZ =
  attribute "pointsAtZ"


{-|-}
preserveAlpha :: JSString -> Attribute
preserveAlpha =
  attribute "preserveAlpha"


{-|-}
preserveAspectRatio :: JSString -> Attribute
preserveAspectRatio =
  attribute "preserveAspectRatio"


{-|-}
primitiveUnits :: JSString -> Attribute
primitiveUnits =
  attribute "primitiveUnits"


{-|-}
r :: JSString -> Attribute
r =
  attribute "r"


{-|-}
radius :: JSString -> Attribute
radius =
  attribute "radius"


{-|-}
refX :: JSString -> Attribute
refX =
  attribute "refX"


{-|-}
refY :: JSString -> Attribute
refY =
  attribute "refY"


{-|-}
renderingIntent :: JSString -> Attribute
renderingIntent =
  attribute "rendering-intent"


{-|-}
repeatCount :: JSString -> Attribute
repeatCount =
  attribute "repeatCount"


{-|-}
repeatDur :: JSString -> Attribute
repeatDur =
  attribute "repeatDur"


{-|-}
requiredExtensions :: JSString -> Attribute
requiredExtensions =
  attribute "requiredExtensions"


{-|-}
requiredFeatures :: JSString -> Attribute
requiredFeatures =
  attribute "requiredFeatures"


{-|-}
restart :: JSString -> Attribute
restart =
  attribute "restart"


{-|-}
result :: JSString -> Attribute
result =
  attribute "result"


{-|-}
rotate :: JSString -> Attribute
rotate =
  attribute "rotate"


{-|-}
rx :: JSString -> Attribute
rx =
  attribute "rx"


{-|-}
ry :: JSString -> Attribute
ry =
  attribute "ry"


{-|-}
scale :: JSString -> Attribute
scale =
  attribute "scale"


{-|-}
seed :: JSString -> Attribute
seed =
  attribute "seed"


{-|-}
slope :: JSString -> Attribute
slope =
  attribute "slope"


{-|-}
spacing :: JSString -> Attribute
spacing =
  attribute "spacing"


{-|-}
specularConstant :: JSString -> Attribute
specularConstant =
  attribute "specularConstant"


{-|-}
specularExponent :: JSString -> Attribute
specularExponent =
  attribute "specularExponent"


{-|-}
speed :: JSString -> Attribute
speed =
  attribute "speed"


{-|-}
spreadMethod :: JSString -> Attribute
spreadMethod =
  attribute "spreadMethod"


{-|-}
startOffset :: JSString -> Attribute
startOffset =
  attribute "startOffset"


{-|-}
stdDeviation :: JSString -> Attribute
stdDeviation =
  attribute "stdDeviation"


{-|-}
stemh :: JSString -> Attribute
stemh =
  attribute "stemh"


{-|-}
stemv :: JSString -> Attribute
stemv =
  attribute "stemv"


{-|-}
stitchTiles :: JSString -> Attribute
stitchTiles =
  attribute "stitchTiles"


{-|-}
strikethroughPosition :: JSString -> Attribute
strikethroughPosition =
  attribute "strikethrough-position"


{-|-}
strikethroughThickness :: JSString -> Attribute
strikethroughThickness =
  attribute "strikethrough-thickness"


{-|-}
string :: JSString -> Attribute
string =
  attribute "string"


{-|-}
style :: JSString -> Attribute
style =
  attribute "style"


{-|-}
surfaceScale :: JSString -> Attribute
surfaceScale =
  attribute "surfaceScale"


{-|-}
systemLanguage :: JSString -> Attribute
systemLanguage =
  attribute "systemLanguage"


{-|-}
tableValues :: JSString -> Attribute
tableValues =
  attribute "tableValues"


{-|-}
target :: JSString -> Attribute
target =
  attribute "target"


{-|-}
targetX :: JSString -> Attribute
targetX =
  attribute "targetX"


{-|-}
targetY :: JSString -> Attribute
targetY =
  attribute "targetY"


{-|-}
textLength :: JSString -> Attribute
textLength =
  attribute "textLength"


{-|-}
title :: JSString -> Attribute
title =
  attribute "title"


{-|-}
to :: JSString -> Attribute
to =
  attribute "to"


{-|-}
transform :: JSString -> Attribute
transform =
  attribute "transform"


{-|-}
type' :: JSString -> Attribute
type' =
  attribute "type"


{-|-}
u1 :: JSString -> Attribute
u1 =
  attribute "u1"


{-|-}
u2 :: JSString -> Attribute
u2 =
  attribute "u2"


{-|-}
underlinePosition :: JSString -> Attribute
underlinePosition =
  attribute "underline-position"


{-|-}
underlineThickness :: JSString -> Attribute
underlineThickness =
  attribute "underline-thickness"


{-|-}
unicode :: JSString -> Attribute
unicode =
  attribute "unicode"


{-|-}
unicodeRange :: JSString -> Attribute
unicodeRange =
  attribute "unicode-range"


{-|-}
unitsPerEm :: JSString -> Attribute
unitsPerEm =
  attribute "units-per-em"


{-|-}
vAlphabetic :: JSString -> Attribute
vAlphabetic =
  attribute "v-alphabetic"


{-|-}
vHanging :: JSString -> Attribute
vHanging =
  attribute "v-hanging"


{-|-}
vIdeographic :: JSString -> Attribute
vIdeographic =
  attribute "v-ideographic"


{-|-}
vMathematical :: JSString -> Attribute
vMathematical =
  attribute "v-mathematical"


{-|-}
values :: JSString -> Attribute
values =
  attribute "values"


{-|-}
version :: JSString -> Attribute
version =
  attribute "version"


{-|-}
vertAdvY :: JSString -> Attribute
vertAdvY =
  attribute "vert-adv-y"


{-|-}
vertOriginX :: JSString -> Attribute
vertOriginX =
  attribute "vert-origin-x"


{-|-}
vertOriginY :: JSString -> Attribute
vertOriginY =
  attribute "vert-origin-y"


{-|-}
viewBox :: JSString -> Attribute
viewBox =
  attribute "viewBox"


{-|-}
viewTarget :: JSString -> Attribute
viewTarget =
  attribute "viewTarget"


{-|-}
width :: JSString -> Attribute
width =
  attribute "width"


{-|-}
widths :: JSString -> Attribute
widths =
  attribute "widths"


{-|-}
x :: JSString -> Attribute
x =
  attribute "x"


{-|-}
xHeight :: JSString -> Attribute
xHeight =
  attribute "x-height"


{-|-}
x1 :: JSString -> Attribute
x1 =
  attribute "x1"


{-|-}
x2 :: JSString -> Attribute
x2 =
  attribute "x2"


{-|-}
xChannelSelector :: JSString -> Attribute
xChannelSelector =
  attribute "xChannelSelector"


{-|-}
xlinkActuate :: JSString -> Attribute
xlinkActuate =
  attributeNS "http://www.w3.org/1999/xlink" "xlink:actuate"


{-|-}
xlinkArcrole :: JSString -> Attribute
xlinkArcrole =
  attributeNS "http://www.w3.org/1999/xlink" "xlink:arcrole"


{-|-}
xlinkHref :: JSString -> Attribute
xlinkHref =
  attributeNS "http://www.w3.org/1999/xlink" "xlink:href"


{-|-}
xlinkRole :: JSString -> Attribute
xlinkRole =
  attributeNS "http://www.w3.org/1999/xlink" "xlink:role"


{-|-}
xlinkShow :: JSString -> Attribute
xlinkShow =
  attributeNS "http://www.w3.org/1999/xlink" "xlink:show"


{-|-}
xlinkTitle :: JSString -> Attribute
xlinkTitle =
  attributeNS "http://www.w3.org/1999/xlink" "xlink:title"


{-|-}
xlinkType :: JSString -> Attribute
xlinkType =
  attributeNS "http://www.w3.org/1999/xlink" "xlink:type"


{-|-}
xmlBase :: JSString -> Attribute
xmlBase =
  attributeNS "http://www.w3.org/XML/1998/namespace" "xml:base"


{-|-}
xmlLang :: JSString -> Attribute
xmlLang =
  attributeNS "http://www.w3.org/XML/1998/namespace" "xml:lang"


{-|-}
xmlSpace :: JSString -> Attribute
xmlSpace =
  attributeNS "http://www.w3.org/XML/1998/namespace" "xml:space"


{-|-}
y :: JSString -> Attribute
y =
  attribute "y"


{-|-}
y1 :: JSString -> Attribute
y1 =
  attribute "y1"


{-|-}
y2 :: JSString -> Attribute
y2 =
  attribute "y2"


{-|-}
yChannelSelector :: JSString -> Attribute
yChannelSelector =
  attribute "yChannelSelector"


{-|-}
z :: JSString -> Attribute
z =
  attribute "z"


{-|-}
zoomAndPan :: JSString -> Attribute
zoomAndPan =
  attribute "zoomAndPan"



-- Presentation attributes

{-|-}
alignmentBaseline :: JSString -> Attribute
alignmentBaseline =
  attribute "alignment-baseline"


{-|-}
baselineShift :: JSString -> Attribute
baselineShift =
  attribute "baseline-shift"


{-|-}
clipPath :: JSString -> Attribute
clipPath =
  attribute "clip-path"


{-|-}
clipRule :: JSString -> Attribute
clipRule =
  attribute "clip-rule"


{-|-}
clip :: JSString -> Attribute
clip =
  attribute "clip"


{-|-}
colorInterpolationFilters :: JSString -> Attribute
colorInterpolationFilters =
  attribute "color-interpolation-filters"


{-|-}
colorInterpolation :: JSString -> Attribute
colorInterpolation =
  attribute "color-interpolation"


{-|-}
colorProfile :: JSString -> Attribute
colorProfile =
  attribute "color-profile"


{-|-}
colorRendering :: JSString -> Attribute
colorRendering =
  attribute "color-rendering"


{-|-}
color :: JSString -> Attribute
color =
  attribute "color"


{-|-}
cursor :: JSString -> Attribute
cursor =
  attribute "cursor"


{-|-}
direction :: JSString -> Attribute
direction =
  attribute "direction"


{-|-}
display :: JSString -> Attribute
display =
  attribute "display"


{-|-}
dominantBaseline :: JSString -> Attribute
dominantBaseline =
  attribute "dominant-baseline"


{-|-}
enableBackground :: JSString -> Attribute
enableBackground =
  attribute "enable-background"


{-|-}
fillOpacity :: JSString -> Attribute
fillOpacity =
  attribute "fill-opacity"


{-|-}
fillRule :: JSString -> Attribute
fillRule =
  attribute "fill-rule"


{-|-}
fill :: JSString -> Attribute
fill =
  attribute "fill"


{-|-}
filter :: JSString -> Attribute
filter =
  attribute "filter"


{-|-}
floodColor :: JSString -> Attribute
floodColor =
  attribute "flood-color"


{-|-}
floodOpacity :: JSString -> Attribute
floodOpacity =
  attribute "flood-opacity"


{-|-}
fontFamily :: JSString -> Attribute
fontFamily =
  attribute "font-family"


{-|-}
fontSizeAdjust :: JSString -> Attribute
fontSizeAdjust =
  attribute "font-size-adjust"


{-|-}
fontSize :: JSString -> Attribute
fontSize =
  attribute "font-size"


{-|-}
fontStretch :: JSString -> Attribute
fontStretch =
  attribute "font-stretch"


{-|-}
fontStyle :: JSString -> Attribute
fontStyle =
  attribute "font-style"


{-|-}
fontVariant :: JSString -> Attribute
fontVariant =
  attribute "font-variant"


{-|-}
fontWeight :: JSString -> Attribute
fontWeight =
  attribute "font-weight"


{-|-}
glyphOrientationHorizontal :: JSString -> Attribute
glyphOrientationHorizontal =
  attribute "glyph-orientation-horizontal"


{-|-}
glyphOrientationVertical :: JSString -> Attribute
glyphOrientationVertical =
  attribute "glyph-orientation-vertical"


{-|-}
imageRendering :: JSString -> Attribute
imageRendering =
  attribute "image-rendering"


{-|-}
kerning :: JSString -> Attribute
kerning =
  attribute "kerning"


{-|-}
letterSpacing :: JSString -> Attribute
letterSpacing =
  attribute "letter-spacing"


{-|-}
lightingColor :: JSString -> Attribute
lightingColor =
  attribute "lighting-color"


{-|-}
markerEnd :: JSString -> Attribute
markerEnd =
  attribute "marker-end"


{-|-}
markerMid :: JSString -> Attribute
markerMid =
  attribute "marker-mid"


{-|-}
markerStart :: JSString -> Attribute
markerStart =
  attribute "marker-start"


{-|-}
mask :: JSString -> Attribute
mask =
  attribute "mask"


{-|-}
opacity :: JSString -> Attribute
opacity =
  attribute "opacity"


{-|-}
overflow :: JSString -> Attribute
overflow =
  attribute "overflow"


{-|-}
pointerEvents :: JSString -> Attribute
pointerEvents =
  attribute "pointer-events"


{-|-}
shapeRendering :: JSString -> Attribute
shapeRendering =
  attribute "shape-rendering"


{-|-}
stopColor :: JSString -> Attribute
stopColor =
  attribute "stop-color"


{-|-}
stopOpacity :: JSString -> Attribute
stopOpacity =
  attribute "stop-opacity"


{-|-}
strokeDasharray :: JSString -> Attribute
strokeDasharray =
  attribute "stroke-dasharray"


{-|-}
strokeDashoffset :: JSString -> Attribute
strokeDashoffset =
  attribute "stroke-dashoffset"


{-|-}
strokeLinecap :: JSString -> Attribute
strokeLinecap =
  attribute "stroke-linecap"


{-|-}
strokeLinejoin :: JSString -> Attribute
strokeLinejoin =
  attribute "stroke-linejoin"


{-|-}
strokeMiterlimit :: JSString -> Attribute
strokeMiterlimit =
  attribute "stroke-miterlimit"


{-|-}
strokeOpacity :: JSString -> Attribute
strokeOpacity =
  attribute "stroke-opacity"


{-|-}
strokeWidth :: JSString -> Attribute
strokeWidth =
  attribute "stroke-width"


{-|-}
stroke :: JSString -> Attribute
stroke =
  attribute "stroke"


{-|-}
textAnchor :: JSString -> Attribute
textAnchor =
  attribute "text-anchor"


{-|-}
textDecoration :: JSString -> Attribute
textDecoration =
  attribute "text-decoration"


{-|-}
textRendering :: JSString -> Attribute
textRendering =
  attribute "text-rendering"


{-|-}
unicodeBidi :: JSString -> Attribute
unicodeBidi =
  attribute "unicode-bidi"


{-|-}
visibility :: JSString -> Attribute
visibility =
  attribute "visibility"


{-|-}
wordSpacing :: JSString -> Attribute
wordSpacing =
  attribute "word-spacing"


{-|-}
writingMode :: JSString -> Attribute
writingMode =
  attribute "writing-mode"


-- Internal

-- TODO use something faster for all conversions
showJS = Data.JSString.pack . show
