
{-# LANGUAGE OverloadedStrings, NoMonomorphismRestriction #-}

module Web.VirtualDom.Svg.Attributes
    -- (
    -- )
    where

import Prelude hiding (id, min, max)
import Data.JSString

import Web.VirtualDom.Svg (Property)
import qualified Web.VirtualDom as VirtualDom


-- Regular VirtualDom.attributes

{-|-}
accentHeight :: JSString -> Attribute
accentHeight =
  VirtualDom.attribute "accent-height"


{-|-}
accelerate :: JSString -> Attribute
accelerate =
  VirtualDom.attribute "accelerate"


{-|-}
accumulate :: JSString -> Attribute
accumulate =
  VirtualDom.attribute "accumulate"


{-|-}
additive :: JSString -> Attribute
additive =
  VirtualDom.attribute "additive"


{-|-}
alphabetic :: JSString -> Attribute
alphabetic =
  VirtualDom.attribute "alphabetic"


{-|-}
allowReorder :: JSString -> Attribute
allowReorder =
  VirtualDom.attribute "allowReorder"


{-|-}
amplitude :: JSString -> Attribute
amplitude =
  VirtualDom.attribute "amplitude"


{-|-}
arabicForm :: JSString -> Attribute
arabicForm =
  VirtualDom.attribute "arabic-form"


{-|-}
ascent :: JSString -> Attribute
ascent =
  VirtualDom.attribute "ascent"


{-|-}
attributeName :: JSString -> Attribute
attributeName =
  VirtualDom.attribute "VirtualDom.attributeName"


{-|-}
attributeType :: JSString -> Attribute
attributeType =
  VirtualDom.attribute "VirtualDom.attributeType"


{-|-}
autoReverse :: JSString -> Attribute
autoReverse =
  VirtualDom.attribute "autoReverse"


{-|-}
azimuth :: JSString -> Attribute
azimuth =
  VirtualDom.attribute "azimuth"


{-|-}
baseFrequency :: JSString -> Attribute
baseFrequency =
  VirtualDom.attribute "baseFrequency"


{-|-}
baseProfile :: JSString -> Attribute
baseProfile =
  VirtualDom.attribute "baseProfile"


{-|-}
bbox :: JSString -> Attribute
bbox =
  VirtualDom.attribute "bbox"


{-|-}
begin :: JSString -> Attribute
begin =
  VirtualDom.attribute "begin"


{-|-}
bias :: JSString -> Attribute
bias =
  VirtualDom.attribute "bias"


{-|-}
by :: JSString -> Attribute
by =
  VirtualDom.attribute "by"


{-|-}
calcMode :: JSString -> Attribute
calcMode =
  VirtualDom.attribute "calcMode"


{-|-}
capHeight :: JSString -> Attribute
capHeight =
  VirtualDom.attribute "cap-height"


{-|-}
class_ :: JSString -> Attribute
class_ =
  VirtualDom.attribute "class"


{-|-}
clipPathUnits :: JSString -> Attribute
clipPathUnits =
  VirtualDom.attribute "clipPathUnits"


{-|-}
contentScriptType :: JSString -> Attribute
contentScriptType =
  VirtualDom.attribute "contentScriptType"


{-|-}
contentStyleType :: JSString -> Attribute
contentStyleType =
  VirtualDom.attribute "contentStyleType"


{-|-}
cx :: JSString -> Attribute
cx =
  VirtualDom.attribute "cx"


{-|-}
cy :: JSString -> Attribute
cy =
  VirtualDom.attribute "cy"


{-|-}
d :: JSString -> Attribute
d =
  VirtualDom.attribute "d"


{-|-}
decelerate :: JSString -> Attribute
decelerate =
  VirtualDom.attribute "decelerate"


{-|-}
descent :: JSString -> Attribute
descent =
  VirtualDom.attribute "descent"


{-|-}
diffuseConstant :: JSString -> Attribute
diffuseConstant =
  VirtualDom.attribute "diffuseConstant"


{-|-}
divisor :: JSString -> Attribute
divisor =
  VirtualDom.attribute "divisor"


{-|-}
dur :: JSString -> Attribute
dur =
  VirtualDom.attribute "dur"


{-|-}
dx :: JSString -> Attribute
dx =
  VirtualDom.attribute "dx"


{-|-}
dy :: JSString -> Attribute
dy =
  VirtualDom.attribute "dy"


{-|-}
edgeMode :: JSString -> Attribute
edgeMode =
  VirtualDom.attribute "edgeMode"


{-|-}
elevation :: JSString -> Attribute
elevation =
  VirtualDom.attribute "elevation"


{-|-}
end :: JSString -> Attribute
end =
  VirtualDom.attribute "end"


{-|-}
exponent :: JSString -> Attribute
exponent =
  VirtualDom.attribute "exponent"


{-|-}
externalResourcesRequired :: JSString -> Attribute
externalResourcesRequired =
  VirtualDom.attribute "externalResourcesRequired"


{-|-}
filterRes :: JSString -> Attribute
filterRes =
  VirtualDom.attribute "filterRes"


{-|-}
filterUnits :: JSString -> Attribute
filterUnits =
  VirtualDom.attribute "filterUnits"


{-|-}
format :: JSString -> Attribute
format =
  VirtualDom.attribute "format"


{-|-}
from :: JSString -> Attribute
from =
  VirtualDom.attribute "from"


{-|-}
fx :: JSString -> Attribute
fx =
  VirtualDom.attribute "fx"


{-|-}
fy :: JSString -> Attribute
fy =
  VirtualDom.attribute "fy"


{-|-}
g1 :: JSString -> Attribute
g1 =
  VirtualDom.attribute "g1"


{-|-}
g2 :: JSString -> Attribute
g2 =
  VirtualDom.attribute "g2"


{-|-}
glyphName :: JSString -> Attribute
glyphName =
  VirtualDom.attribute "glyph-name"


{-|-}
glyphRef :: JSString -> Attribute
glyphRef =
  VirtualDom.attribute "glyphRef"


{-|-}
gradientTransform :: JSString -> Attribute
gradientTransform =
  VirtualDom.attribute "gradientTransform"


{-|-}
gradientUnits :: JSString -> Attribute
gradientUnits =
  VirtualDom.attribute "gradientUnits"


{-|-}
hanging :: JSString -> Attribute
hanging =
  VirtualDom.attribute "hanging"


{-|-}
height :: JSString -> Attribute
height =
  VirtualDom.attribute "height"


{-|-}
horizAdvX :: JSString -> Attribute
horizAdvX =
  VirtualDom.attribute "horiz-adv-x"


{-|-}
horizOriginX :: JSString -> Attribute
horizOriginX =
  VirtualDom.attribute "horiz-origin-x"


{-|-}
horizOriginY :: JSString -> Attribute
horizOriginY =
  VirtualDom.attribute "horiz-origin-y"


{-|-}
id :: JSString -> Attribute
id =
  VirtualDom.attribute "id"


{-|-}
ideographic :: JSString -> Attribute
ideographic =
  VirtualDom.attribute "ideographic"


{-|-}
in' :: JSString -> Attribute
in' =
  VirtualDom.attribute "in"


{-|-}
in2 :: JSString -> Attribute
in2 =
  VirtualDom.attribute "in2"


{-|-}
intercept :: JSString -> Attribute
intercept =
  VirtualDom.attribute "intercept"


{-|-}
k :: JSString -> Attribute
k =
  VirtualDom.attribute "k"


{-|-}
k1 :: JSString -> Attribute
k1 =
  VirtualDom.attribute "k1"


{-|-}
k2 :: JSString -> Attribute
k2 =
  VirtualDom.attribute "k2"


{-|-}
k3 :: JSString -> Attribute
k3 =
  VirtualDom.attribute "k3"


{-|-}
k4 :: JSString -> Attribute
k4 =
  VirtualDom.attribute "k4"


{-|-}
kernelMatrix :: JSString -> Attribute
kernelMatrix =
  VirtualDom.attribute "kernelMatrix"


{-|-}
kernelUnitLength :: JSString -> Attribute
kernelUnitLength =
  VirtualDom.attribute "kernelUnitLength"


{-|-}
keyPoints :: JSString -> Attribute
keyPoints =
  VirtualDom.attribute "keyPoints"


{-|-}
keySplines :: JSString -> Attribute
keySplines =
  VirtualDom.attribute "keySplines"


{-|-}
keyTimes :: JSString -> Attribute
keyTimes =
  VirtualDom.attribute "keyTimes"


{-|-}
lang :: JSString -> Attribute
lang =
  VirtualDom.attribute "lang"


{-|-}
lengthAdjust :: JSString -> Attribute
lengthAdjust =
  VirtualDom.attribute "lengthAdjust"


{-|-}
limitingConeAngle :: JSString -> Attribute
limitingConeAngle =
  VirtualDom.attribute "limitingConeAngle"


{-|-}
local :: JSString -> Attribute
local =
  VirtualDom.attribute "local"


{-|-}
markerHeight :: JSString -> Attribute
markerHeight =
  VirtualDom.attribute "markerHeight"


{-|-}
markerUnits :: JSString -> Attribute
markerUnits =
  VirtualDom.attribute "markerUnits"


{-|-}
markerWidth :: JSString -> Attribute
markerWidth =
  VirtualDom.attribute "markerWidth"


{-|-}
maskContentUnits :: JSString -> Attribute
maskContentUnits =
  VirtualDom.attribute "maskContentUnits"


{-|-}
maskUnits :: JSString -> Attribute
maskUnits =
  VirtualDom.attribute "maskUnits"


{-|-}
mathematical :: JSString -> Attribute
mathematical =
  VirtualDom.attribute "mathematical"


{-|-}
max :: JSString -> Attribute
max =
  VirtualDom.attribute "max"


{-|-}
media :: JSString -> Attribute
media =
  VirtualDom.attribute "media"


{-|-}
method :: JSString -> Attribute
method =
  VirtualDom.attribute "method"


{-|-}
min :: JSString -> Attribute
min =
  VirtualDom.attribute "min"


{-|-}
mode :: JSString -> Attribute
mode =
  VirtualDom.attribute "mode"


{-|-}
name :: JSString -> Attribute
name =
  VirtualDom.attribute "name"


{-|-}
numOctaves :: JSString -> Attribute
numOctaves =
  VirtualDom.attribute "numOctaves"


{-|-}
offset :: JSString -> Attribute
offset =
  VirtualDom.attribute "offset"


{-|-}
operator :: JSString -> Attribute
operator =
  VirtualDom.attribute "operator"


{-|-}
order :: JSString -> Attribute
order =
  VirtualDom.attribute "order"


{-|-}
orient :: JSString -> Attribute
orient =
  VirtualDom.attribute "orient"


{-|-}
orientation :: JSString -> Attribute
orientation =
  VirtualDom.attribute "orientation"


{-|-}
origin :: JSString -> Attribute
origin =
  VirtualDom.attribute "origin"


{-|-}
overlinePosition :: JSString -> Attribute
overlinePosition =
  VirtualDom.attribute "overline-position"


{-|-}
overlineThickness :: JSString -> Attribute
overlineThickness =
  VirtualDom.attribute "overline-thickness"


{-|-}
panose1 :: JSString -> Attribute
panose1 =
  VirtualDom.attribute "panose-1"


{-|-}
path :: JSString -> Attribute
path =
  VirtualDom.attribute "path"


{-|-}
pathLength :: JSString -> Attribute
pathLength =
  VirtualDom.attribute "pathLength"


{-|-}
patternContentUnits :: JSString -> Attribute
patternContentUnits =
  VirtualDom.attribute "patternContentUnits"


{-|-}
patternTransform :: JSString -> Attribute
patternTransform =
  VirtualDom.attribute "patternTransform"


{-|-}
patternUnits :: JSString -> Attribute
patternUnits =
  VirtualDom.attribute "patternUnits"


{-|-}
pointOrder :: JSString -> Attribute
pointOrder =
  VirtualDom.attribute "point-order"


{-|-}
points :: JSString -> Attribute
points =
  VirtualDom.attribute "points"


{-|-}
pointsAtX :: JSString -> Attribute
pointsAtX =
  VirtualDom.attribute "pointsAtX"


{-|-}
pointsAtY :: JSString -> Attribute
pointsAtY =
  VirtualDom.attribute "pointsAtY"


{-|-}
pointsAtZ :: JSString -> Attribute
pointsAtZ =
  VirtualDom.attribute "pointsAtZ"


{-|-}
preserveAlpha :: JSString -> Attribute
preserveAlpha =
  VirtualDom.attribute "preserveAlpha"


{-|-}
preserveAspectRatio :: JSString -> Attribute
preserveAspectRatio =
  VirtualDom.attribute "preserveAspectRatio"


{-|-}
primitiveUnits :: JSString -> Attribute
primitiveUnits =
  VirtualDom.attribute "primitiveUnits"


{-|-}
r :: JSString -> Attribute
r =
  VirtualDom.attribute "r"


{-|-}
radius :: JSString -> Attribute
radius =
  VirtualDom.attribute "radius"


{-|-}
refX :: JSString -> Attribute
refX =
  VirtualDom.attribute "refX"


{-|-}
refY :: JSString -> Attribute
refY =
  VirtualDom.attribute "refY"


{-|-}
renderingIntent :: JSString -> Attribute
renderingIntent =
  VirtualDom.attribute "rendering-intent"


{-|-}
repeatCount :: JSString -> Attribute
repeatCount =
  VirtualDom.attribute "repeatCount"


{-|-}
repeatDur :: JSString -> Attribute
repeatDur =
  VirtualDom.attribute "repeatDur"


{-|-}
requiredExtensions :: JSString -> Attribute
requiredExtensions =
  VirtualDom.attribute "requiredExtensions"


{-|-}
requiredFeatures :: JSString -> Attribute
requiredFeatures =
  VirtualDom.attribute "requiredFeatures"


{-|-}
restart :: JSString -> Attribute
restart =
  VirtualDom.attribute "restart"


{-|-}
result :: JSString -> Attribute
result =
  VirtualDom.attribute "result"


{-|-}
rotate :: JSString -> Attribute
rotate =
  VirtualDom.attribute "rotate"


{-|-}
rx :: JSString -> Attribute
rx =
  VirtualDom.attribute "rx"


{-|-}
ry :: JSString -> Attribute
ry =
  VirtualDom.attribute "ry"


{-|-}
scale :: JSString -> Attribute
scale =
  VirtualDom.attribute "scale"


{-|-}
seed :: JSString -> Attribute
seed =
  VirtualDom.attribute "seed"


{-|-}
slope :: JSString -> Attribute
slope =
  VirtualDom.attribute "slope"


{-|-}
spacing :: JSString -> Attribute
spacing =
  VirtualDom.attribute "spacing"


{-|-}
specularConstant :: JSString -> Attribute
specularConstant =
  VirtualDom.attribute "specularConstant"


{-|-}
specularExponent :: JSString -> Attribute
specularExponent =
  VirtualDom.attribute "specularExponent"


{-|-}
speed :: JSString -> Attribute
speed =
  VirtualDom.attribute "speed"


{-|-}
spreadMethod :: JSString -> Attribute
spreadMethod =
  VirtualDom.attribute "spreadMethod"


{-|-}
startOffset :: JSString -> Attribute
startOffset =
  VirtualDom.attribute "startOffset"


{-|-}
stdDeviation :: JSString -> Attribute
stdDeviation =
  VirtualDom.attribute "stdDeviation"


{-|-}
stemh :: JSString -> Attribute
stemh =
  VirtualDom.attribute "stemh"


{-|-}
stemv :: JSString -> Attribute
stemv =
  VirtualDom.attribute "stemv"


{-|-}
stitchTiles :: JSString -> Attribute
stitchTiles =
  VirtualDom.attribute "stitchTiles"


{-|-}
strikethroughPosition :: JSString -> Attribute
strikethroughPosition =
  VirtualDom.attribute "strikethrough-position"


{-|-}
strikethroughThickness :: JSString -> Attribute
strikethroughThickness =
  VirtualDom.attribute "strikethrough-thickness"


{-|-}
string :: JSString -> Attribute
string =
  VirtualDom.attribute "string"


{-|-}
style :: JSString -> Attribute
style =
  VirtualDom.attribute "style"


{-|-}
surfaceScale :: JSString -> Attribute
surfaceScale =
  VirtualDom.attribute "surfaceScale"


{-|-}
systemLanguage :: JSString -> Attribute
systemLanguage =
  VirtualDom.attribute "systemLanguage"


{-|-}
tableValues :: JSString -> Attribute
tableValues =
  VirtualDom.attribute "tableValues"


{-|-}
target :: JSString -> Attribute
target =
  VirtualDom.attribute "target"


{-|-}
targetX :: JSString -> Attribute
targetX =
  VirtualDom.attribute "targetX"


{-|-}
targetY :: JSString -> Attribute
targetY =
  VirtualDom.attribute "targetY"


{-|-}
textLength :: JSString -> Attribute
textLength =
  VirtualDom.attribute "textLength"


{-|-}
title :: JSString -> Attribute
title =
  VirtualDom.attribute "title"


{-|-}
to :: JSString -> Attribute
to =
  VirtualDom.attribute "to"


{-|-}
transform :: JSString -> Attribute
transform =
  VirtualDom.attribute "transform"


{-|-}
type' :: JSString -> Attribute
type' =
  VirtualDom.attribute "type"


{-|-}
u1 :: JSString -> Attribute
u1 =
  VirtualDom.attribute "u1"


{-|-}
u2 :: JSString -> Attribute
u2 =
  VirtualDom.attribute "u2"


{-|-}
underlinePosition :: JSString -> Attribute
underlinePosition =
  VirtualDom.attribute "underline-position"


{-|-}
underlineThickness :: JSString -> Attribute
underlineThickness =
  VirtualDom.attribute "underline-thickness"


{-|-}
unicode :: JSString -> Attribute
unicode =
  VirtualDom.attribute "unicode"


{-|-}
unicodeRange :: JSString -> Attribute
unicodeRange =
  VirtualDom.attribute "unicode-range"


{-|-}
unitsPerEm :: JSString -> Attribute
unitsPerEm =
  VirtualDom.attribute "units-per-em"


{-|-}
vAlphabetic :: JSString -> Attribute
vAlphabetic =
  VirtualDom.attribute "v-alphabetic"


{-|-}
vHanging :: JSString -> Attribute
vHanging =
  VirtualDom.attribute "v-hanging"


{-|-}
vIdeographic :: JSString -> Attribute
vIdeographic =
  VirtualDom.attribute "v-ideographic"


{-|-}
vMathematical :: JSString -> Attribute
vMathematical =
  VirtualDom.attribute "v-mathematical"


{-|-}
values :: JSString -> Attribute
values =
  VirtualDom.attribute "values"


{-|-}
version :: JSString -> Attribute
version =
  VirtualDom.attribute "version"


{-|-}
vertAdvY :: JSString -> Attribute
vertAdvY =
  VirtualDom.attribute "vert-adv-y"


{-|-}
vertOriginX :: JSString -> Attribute
vertOriginX =
  VirtualDom.attribute "vert-origin-x"


{-|-}
vertOriginY :: JSString -> Attribute
vertOriginY =
  VirtualDom.attribute "vert-origin-y"


{-|-}
viewBox :: JSString -> Attribute
viewBox =
  VirtualDom.attribute "viewBox"


{-|-}
viewTarget :: JSString -> Attribute
viewTarget =
  VirtualDom.attribute "viewTarget"


{-|-}
width :: JSString -> Attribute
width =
  VirtualDom.attribute "width"


{-|-}
widths :: JSString -> Attribute
widths =
  VirtualDom.attribute "widths"


{-|-}
x :: JSString -> Attribute
x =
  VirtualDom.attribute "x"


{-|-}
xHeight :: JSString -> Attribute
xHeight =
  VirtualDom.attribute "x-height"


{-|-}
x1 :: JSString -> Attribute
x1 =
  VirtualDom.attribute "x1"


{-|-}
x2 :: JSString -> Attribute
x2 =
  VirtualDom.attribute "x2"


{-|-}
xChannelSelector :: JSString -> Attribute
xChannelSelector =
  VirtualDom.attribute "xChannelSelector"


{-|-}
xlinkActuate :: JSString -> Attribute
xlinkActuate =
  VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:actuate"


{-|-}
xlinkArcrole :: JSString -> Attribute
xlinkArcrole =
  VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:arcrole"


{-|-}
xlinkHref :: JSString -> Attribute
xlinkHref =
  VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:href"


{-|-}
xlinkRole :: JSString -> Attribute
xlinkRole =
  VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:role"


{-|-}
xlinkShow :: JSString -> Attribute
xlinkShow =
  VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:show"


{-|-}
xlinkTitle :: JSString -> Attribute
xlinkTitle =
  VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:title"


{-|-}
xlinkType :: JSString -> Attribute
xlinkType =
  VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:type"


{-|-}
xmlBase :: JSString -> Attribute
xmlBase =
  VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:base"


{-|-}
xmlLang :: JSString -> Attribute
xmlLang =
  VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:lang"


{-|-}
xmlSpace :: JSString -> Attribute
xmlSpace =
  VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:space"


{-|-}
y :: JSString -> Attribute
y =
  VirtualDom.attribute "y"


{-|-}
y1 :: JSString -> Attribute
y1 =
  VirtualDom.attribute "y1"


{-|-}
y2 :: JSString -> Attribute
y2 =
  VirtualDom.attribute "y2"


{-|-}
yChannelSelector :: JSString -> Attribute
yChannelSelector =
  VirtualDom.attribute "yChannelSelector"


{-|-}
z :: JSString -> Attribute
z =
  VirtualDom.attribute "z"


{-|-}
zoomAndPan :: JSString -> Attribute
zoomAndPan =
  VirtualDom.attribute "zoomAndPan"



-- Presentation VirtualDom.attributes

{-|-}
alignmentBaseline :: JSString -> Attribute
alignmentBaseline =
  VirtualDom.attribute "alignment-baseline"


{-|-}
baselineShift :: JSString -> Attribute
baselineShift =
  VirtualDom.attribute "baseline-shift"


{-|-}
clipPath :: JSString -> Attribute
clipPath =
  VirtualDom.attribute "clip-path"


{-|-}
clipRule :: JSString -> Attribute
clipRule =
  VirtualDom.attribute "clip-rule"


{-|-}
clip :: JSString -> Attribute
clip =
  VirtualDom.attribute "clip"


{-|-}
colorInterpolationFilters :: JSString -> Attribute
colorInterpolationFilters =
  VirtualDom.attribute "color-interpolation-filters"


{-|-}
colorInterpolation :: JSString -> Attribute
colorInterpolation =
  VirtualDom.attribute "color-interpolation"


{-|-}
colorProfile :: JSString -> Attribute
colorProfile =
  VirtualDom.attribute "color-profile"


{-|-}
colorRendering :: JSString -> Attribute
colorRendering =
  VirtualDom.attribute "color-rendering"


{-|-}
color :: JSString -> Attribute
color =
  VirtualDom.attribute "color"


{-|-}
cursor :: JSString -> Attribute
cursor =
  VirtualDom.attribute "cursor"


{-|-}
direction :: JSString -> Attribute
direction =
  VirtualDom.attribute "direction"


{-|-}
display :: JSString -> Attribute
display =
  VirtualDom.attribute "display"


{-|-}
dominantBaseline :: JSString -> Attribute
dominantBaseline =
  VirtualDom.attribute "dominant-baseline"


{-|-}
enableBackground :: JSString -> Attribute
enableBackground =
  VirtualDom.attribute "enable-background"


{-|-}
fillOpacity :: JSString -> Attribute
fillOpacity =
  VirtualDom.attribute "fill-opacity"


{-|-}
fillRule :: JSString -> Attribute
fillRule =
  VirtualDom.attribute "fill-rule"


{-|-}
fill :: JSString -> Attribute
fill =
  VirtualDom.attribute "fill"


{-|-}
filter :: JSString -> Attribute
filter =
  VirtualDom.attribute "filter"


{-|-}
floodColor :: JSString -> Attribute
floodColor =
  VirtualDom.attribute "flood-color"


{-|-}
floodOpacity :: JSString -> Attribute
floodOpacity =
  VirtualDom.attribute "flood-opacity"


{-|-}
fontFamily :: JSString -> Attribute
fontFamily =
  VirtualDom.attribute "font-family"


{-|-}
fontSizeAdjust :: JSString -> Attribute
fontSizeAdjust =
  VirtualDom.attribute "font-size-adjust"


{-|-}
fontSize :: JSString -> Attribute
fontSize =
  VirtualDom.attribute "font-size"


{-|-}
fontStretch :: JSString -> Attribute
fontStretch =
  VirtualDom.attribute "font-stretch"


{-|-}
fontStyle :: JSString -> Attribute
fontStyle =
  VirtualDom.attribute "font-style"


{-|-}
fontVariant :: JSString -> Attribute
fontVariant =
  VirtualDom.attribute "font-variant"


{-|-}
fontWeight :: JSString -> Attribute
fontWeight =
  VirtualDom.attribute "font-weight"


{-|-}
glyphOrientationHorizontal :: JSString -> Attribute
glyphOrientationHorizontal =
  VirtualDom.attribute "glyph-orientation-horizontal"


{-|-}
glyphOrientationVertical :: JSString -> Attribute
glyphOrientationVertical =
  VirtualDom.attribute "glyph-orientation-vertical"


{-|-}
imageRendering :: JSString -> Attribute
imageRendering =
  VirtualDom.attribute "image-rendering"


{-|-}
kerning :: JSString -> Attribute
kerning =
  VirtualDom.attribute "kerning"


{-|-}
letterSpacing :: JSString -> Attribute
letterSpacing =
  VirtualDom.attribute "letter-spacing"


{-|-}
lightingColor :: JSString -> Attribute
lightingColor =
  VirtualDom.attribute "lighting-color"


{-|-}
markerEnd :: JSString -> Attribute
markerEnd =
  VirtualDom.attribute "marker-end"


{-|-}
markerMid :: JSString -> Attribute
markerMid =
  VirtualDom.attribute "marker-mid"


{-|-}
markerStart :: JSString -> Attribute
markerStart =
  VirtualDom.attribute "marker-start"


{-|-}
mask :: JSString -> Attribute
mask =
  VirtualDom.attribute "mask"


{-|-}
opacity :: JSString -> Attribute
opacity =
  VirtualDom.attribute "opacity"


{-|-}
overflow :: JSString -> Attribute
overflow =
  VirtualDom.attribute "overflow"


{-|-}
pointerEvents :: JSString -> Attribute
pointerEvents =
  VirtualDom.attribute "pointer-events"


{-|-}
shapeRendering :: JSString -> Attribute
shapeRendering =
  VirtualDom.attribute "shape-rendering"


{-|-}
stopColor :: JSString -> Attribute
stopColor =
  VirtualDom.attribute "stop-color"


{-|-}
stopOpacity :: JSString -> Attribute
stopOpacity =
  VirtualDom.attribute "stop-opacity"


{-|-}
strokeDasharray :: JSString -> Attribute
strokeDasharray =
  VirtualDom.attribute "stroke-dasharray"


{-|-}
strokeDashoffset :: JSString -> Attribute
strokeDashoffset =
  VirtualDom.attribute "stroke-dashoffset"


{-|-}
strokeLinecap :: JSString -> Attribute
strokeLinecap =
  VirtualDom.attribute "stroke-linecap"


{-|-}
strokeLinejoin :: JSString -> Attribute
strokeLinejoin =
  VirtualDom.attribute "stroke-linejoin"


{-|-}
strokeMiterlimit :: JSString -> Attribute
strokeMiterlimit =
  VirtualDom.attribute "stroke-miterlimit"


{-|-}
strokeOpacity :: JSString -> Attribute
strokeOpacity =
  VirtualDom.attribute "stroke-opacity"


{-|-}
strokeWidth :: JSString -> Attribute
strokeWidth =
  VirtualDom.attribute "stroke-width"


{-|-}
stroke :: JSString -> Attribute
stroke =
  VirtualDom.attribute "stroke"


{-|-}
textAnchor :: JSString -> Attribute
textAnchor =
  VirtualDom.attribute "text-anchor"


{-|-}
textDecoration :: JSString -> Attribute
textDecoration =
  VirtualDom.attribute "text-decoration"


{-|-}
textRendering :: JSString -> Attribute
textRendering =
  VirtualDom.attribute "text-rendering"


{-|-}
unicodeBidi :: JSString -> Attribute
unicodeBidi =
  VirtualDom.attribute "unicode-bidi"


{-|-}
visibility :: JSString -> Attribute
visibility =
  VirtualDom.attribute "visibility"


{-|-}
wordSpacing :: JSString -> Attribute
wordSpacing =
  VirtualDom.attribute "word-spacing"


{-|-}
writingMode :: JSString -> Attribute
writingMode =
  VirtualDom.attribute "writing-mode"


-- Internal

-- TODO use something faster for all conversions
showJS = Data.JSString.pack . show
