
{-# LANGUAGE OverloadedStrings, NoMonomorphismRestriction #-}

module Web.VirtualDom.Svg.Attributes
    ( accentHeight
    , accelerate
    , accumulate
    , additive
    , alphabetic
    , allowReorder
    , amplitude
    , arabicForm
    , ascent
    , attributeName
    , attributeType
    , autoReverse
    , azimuth
    , baseFrequency
    , baseProfile
    , bbox
    , begin
    , bias
    , by
    , calcMode
    , capHeight
    , class_
    , clipPathUnits
    , contentScriptType
    , contentStyleType
    , cx
    , cy
    , d
    , decelerate
    , descent
    , diffuseConstant
    , divisor
    , dur
    , dx
    , dy
    , edgeMode
    , elevation
    , end
    , exponent
    , externalResourcesRequired
    , filterRes
    , filterUnits
    , format
    , from
    , fx
    , fy
    , g1
    , g2
    , glyphName
    , glyphRef
    , gradientTransform
    , gradientUnits
    , hanging
    , height
    , horizAdvX
    , horizOriginX
    , horizOriginY
    , id
    , ideographic
    , in'
    , in2
    , intercept
    , k
    , k1
    , k2
    , k3
    , k4
    , kernelMatrix
    , kernelUnitLength
    , keyPoints
    , keySplines
    , keyTimes
    , lang
    , lengthAdjust
    , limitingConeAngle
    , local
    , markerHeight
    , markerUnits
    , markerWidth
    , maskContentUnits
    , maskUnits
    , mathematical
    , max
    , media
    , method
    , min
    , mode
    , name
    , numOctaves
    , offset
    , operator
    , order
    , orient
    , orientation
    , origin
    , overlinePosition
    , overlineThickness
    , panose1
    , path
    , pathLength
    , patternContentUnits
    , patternTransform
    , patternUnits
    , pointOrder
    , points
    , pointsAtX
    , pointsAtY
    , pointsAtZ
    , preserveAlpha
    , preserveAspectRatio
    , primitiveUnits
    , r
    , radius
    , refX
    , refY
    , renderingIntent
    , repeatCount
    , repeatDur
    , requiredExtensions
    , requiredFeatures
    , restart
    , result
    , rotate
    , rx
    , ry
    , scale
    , seed
    , slope
    , spacing
    , specularConstant
    , specularExponent
    , speed
    , spreadMethod
    , startOffset
    , stdDeviation
    , stemh
    , stemv
    , stitchTiles
    , strikethroughPosition
    , strikethroughThickness
    , string
    , style
    , surfaceScale
    , systemLanguage
    , tableValues
    , target
    , targetX
    , targetY
    , textLength
    , title
    , to
    , transform
    , type'
    , u1
    , u2
    , underlinePosition
    , underlineThickness
    , unicode
    , unicodeRange
    , unitsPerEm
    , vAlphabetic
    , vHanging
    , vIdeographic
    , vMathematical
    , values
    , version
    , vertAdvY
    , vertOriginX
    , vertOriginY
    , viewBox
    , viewTarget
    , width
    , widths
    , x
    , xHeight
    , x1
    , x2
    , xChannelSelector
    -- , xlinkActuate
    -- , xlinkArcrole
    -- , xlinkHref
    -- , xlinkRole
    -- , xlinkShow
    -- , xlinkTitle
    -- , xlinkType
    -- , xmlBase
    -- , xmlLang
    -- , xmlSpace
    , y
    , y1
    , y2
    , yChannelSelector
    , z
    , zoomAndPan
    , alignmentBaseline
    , baselineShift
    , clipPath
    , clipRule
    , clip
    , colorInterpolationFilters
    , colorInterpolation
    , colorProfile
    , colorRendering
    , color
    , cursor
    , direction
    , display
    , dominantBaseline
    , enableBackground
    , fillOpacity
    , fillRule
    , fill
    , filter
    , floodColor
    , floodOpacity
    , fontFamily
    , fontSizeAdjust
    , fontSize
    , fontStretch
    , fontStyle
    , fontVariant
    , fontWeight
    , glyphOrientationHorizontal
    , glyphOrientationVertical
    , imageRendering
    , kerning
    , letterSpacing
    , lightingColor
    , markerEnd
    , markerMid
    , markerStart
    , mask
    , opacity
    , overflow
    , pointerEvents
    , shapeRendering
    , stopColor
    , stopOpacity
    , strokeDasharray
    , strokeDashoffset
    , strokeLinecap
    , strokeLinejoin
    , strokeMiterlimit
    , strokeOpacity
    , strokeWidth
    , stroke
    , textAnchor
    , textDecoration
    , textRendering
    , unicodeBidi
    , visibility
    , wordSpacing
    , writingMode
    ) where

import Prelude hiding (id, min, max)
import Data.JSString

import Web.VirtualDom.Svg (Property)
import qualified Web.VirtualDom as VirtualDom


-- Regular VirtualDom.attributes

{-|-}
accentHeight :: JSString -> Property
accentHeight =
  VirtualDom.attribute "accent-height"


{-|-}
accelerate :: JSString -> Property
accelerate =
  VirtualDom.attribute "accelerate"


{-|-}
accumulate :: JSString -> Property
accumulate =
  VirtualDom.attribute "accumulate"


{-|-}
additive :: JSString -> Property
additive =
  VirtualDom.attribute "additive"


{-|-}
alphabetic :: JSString -> Property
alphabetic =
  VirtualDom.attribute "alphabetic"


{-|-}
allowReorder :: JSString -> Property
allowReorder =
  VirtualDom.attribute "allowReorder"


{-|-}
amplitude :: JSString -> Property
amplitude =
  VirtualDom.attribute "amplitude"


{-|-}
arabicForm :: JSString -> Property
arabicForm =
  VirtualDom.attribute "arabic-form"


{-|-}
ascent :: JSString -> Property
ascent =
  VirtualDom.attribute "ascent"


{-|-}
attributeName :: JSString -> Property
attributeName =
  VirtualDom.attribute "VirtualDom.attributeName"


{-|-}
attributeType :: JSString -> Property
attributeType =
  VirtualDom.attribute "VirtualDom.attributeType"


{-|-}
autoReverse :: JSString -> Property
autoReverse =
  VirtualDom.attribute "autoReverse"


{-|-}
azimuth :: JSString -> Property
azimuth =
  VirtualDom.attribute "azimuth"


{-|-}
baseFrequency :: JSString -> Property
baseFrequency =
  VirtualDom.attribute "baseFrequency"


{-|-}
baseProfile :: JSString -> Property
baseProfile =
  VirtualDom.attribute "baseProfile"


{-|-}
bbox :: JSString -> Property
bbox =
  VirtualDom.attribute "bbox"


{-|-}
begin :: JSString -> Property
begin =
  VirtualDom.attribute "begin"


{-|-}
bias :: JSString -> Property
bias =
  VirtualDom.attribute "bias"


{-|-}
by :: JSString -> Property
by =
  VirtualDom.attribute "by"


{-|-}
calcMode :: JSString -> Property
calcMode =
  VirtualDom.attribute "calcMode"


{-|-}
capHeight :: JSString -> Property
capHeight =
  VirtualDom.attribute "cap-height"


{-|-}
class_ :: JSString -> Property
class_ =
  VirtualDom.attribute "class"


{-|-}
clipPathUnits :: JSString -> Property
clipPathUnits =
  VirtualDom.attribute "clipPathUnits"


{-|-}
contentScriptType :: JSString -> Property
contentScriptType =
  VirtualDom.attribute "contentScriptType"


{-|-}
contentStyleType :: JSString -> Property
contentStyleType =
  VirtualDom.attribute "contentStyleType"


{-|-}
cx :: JSString -> Property
cx =
  VirtualDom.attribute "cx"


{-|-}
cy :: JSString -> Property
cy =
  VirtualDom.attribute "cy"


{-|-}
d :: JSString -> Property
d =
  VirtualDom.attribute "d"


{-|-}
decelerate :: JSString -> Property
decelerate =
  VirtualDom.attribute "decelerate"


{-|-}
descent :: JSString -> Property
descent =
  VirtualDom.attribute "descent"


{-|-}
diffuseConstant :: JSString -> Property
diffuseConstant =
  VirtualDom.attribute "diffuseConstant"


{-|-}
divisor :: JSString -> Property
divisor =
  VirtualDom.attribute "divisor"


{-|-}
dur :: JSString -> Property
dur =
  VirtualDom.attribute "dur"


{-|-}
dx :: JSString -> Property
dx =
  VirtualDom.attribute "dx"


{-|-}
dy :: JSString -> Property
dy =
  VirtualDom.attribute "dy"


{-|-}
edgeMode :: JSString -> Property
edgeMode =
  VirtualDom.attribute "edgeMode"


{-|-}
elevation :: JSString -> Property
elevation =
  VirtualDom.attribute "elevation"


{-|-}
end :: JSString -> Property
end =
  VirtualDom.attribute "end"


{-|-}
exponent :: JSString -> Property
exponent =
  VirtualDom.attribute "exponent"


{-|-}
externalResourcesRequired :: JSString -> Property
externalResourcesRequired =
  VirtualDom.attribute "externalResourcesRequired"


{-|-}
filterRes :: JSString -> Property
filterRes =
  VirtualDom.attribute "filterRes"


{-|-}
filterUnits :: JSString -> Property
filterUnits =
  VirtualDom.attribute "filterUnits"


{-|-}
format :: JSString -> Property
format =
  VirtualDom.attribute "format"


{-|-}
from :: JSString -> Property
from =
  VirtualDom.attribute "from"


{-|-}
fx :: JSString -> Property
fx =
  VirtualDom.attribute "fx"


{-|-}
fy :: JSString -> Property
fy =
  VirtualDom.attribute "fy"


{-|-}
g1 :: JSString -> Property
g1 =
  VirtualDom.attribute "g1"


{-|-}
g2 :: JSString -> Property
g2 =
  VirtualDom.attribute "g2"


{-|-}
glyphName :: JSString -> Property
glyphName =
  VirtualDom.attribute "glyph-name"


{-|-}
glyphRef :: JSString -> Property
glyphRef =
  VirtualDom.attribute "glyphRef"


{-|-}
gradientTransform :: JSString -> Property
gradientTransform =
  VirtualDom.attribute "gradientTransform"


{-|-}
gradientUnits :: JSString -> Property
gradientUnits =
  VirtualDom.attribute "gradientUnits"


{-|-}
hanging :: JSString -> Property
hanging =
  VirtualDom.attribute "hanging"


{-|-}
height :: JSString -> Property
height =
  VirtualDom.attribute "height"


{-|-}
horizAdvX :: JSString -> Property
horizAdvX =
  VirtualDom.attribute "horiz-adv-x"


{-|-}
horizOriginX :: JSString -> Property
horizOriginX =
  VirtualDom.attribute "horiz-origin-x"


{-|-}
horizOriginY :: JSString -> Property
horizOriginY =
  VirtualDom.attribute "horiz-origin-y"


{-|-}
id :: JSString -> Property
id =
  VirtualDom.attribute "id"


{-|-}
ideographic :: JSString -> Property
ideographic =
  VirtualDom.attribute "ideographic"


{-|-}
in' :: JSString -> Property
in' =
  VirtualDom.attribute "in"


{-|-}
in2 :: JSString -> Property
in2 =
  VirtualDom.attribute "in2"


{-|-}
intercept :: JSString -> Property
intercept =
  VirtualDom.attribute "intercept"


{-|-}
k :: JSString -> Property
k =
  VirtualDom.attribute "k"


{-|-}
k1 :: JSString -> Property
k1 =
  VirtualDom.attribute "k1"


{-|-}
k2 :: JSString -> Property
k2 =
  VirtualDom.attribute "k2"


{-|-}
k3 :: JSString -> Property
k3 =
  VirtualDom.attribute "k3"


{-|-}
k4 :: JSString -> Property
k4 =
  VirtualDom.attribute "k4"


{-|-}
kernelMatrix :: JSString -> Property
kernelMatrix =
  VirtualDom.attribute "kernelMatrix"


{-|-}
kernelUnitLength :: JSString -> Property
kernelUnitLength =
  VirtualDom.attribute "kernelUnitLength"


{-|-}
keyPoints :: JSString -> Property
keyPoints =
  VirtualDom.attribute "keyPoints"


{-|-}
keySplines :: JSString -> Property
keySplines =
  VirtualDom.attribute "keySplines"


{-|-}
keyTimes :: JSString -> Property
keyTimes =
  VirtualDom.attribute "keyTimes"


{-|-}
lang :: JSString -> Property
lang =
  VirtualDom.attribute "lang"


{-|-}
lengthAdjust :: JSString -> Property
lengthAdjust =
  VirtualDom.attribute "lengthAdjust"


{-|-}
limitingConeAngle :: JSString -> Property
limitingConeAngle =
  VirtualDom.attribute "limitingConeAngle"


{-|-}
local :: JSString -> Property
local =
  VirtualDom.attribute "local"


{-|-}
markerHeight :: JSString -> Property
markerHeight =
  VirtualDom.attribute "markerHeight"


{-|-}
markerUnits :: JSString -> Property
markerUnits =
  VirtualDom.attribute "markerUnits"


{-|-}
markerWidth :: JSString -> Property
markerWidth =
  VirtualDom.attribute "markerWidth"


{-|-}
maskContentUnits :: JSString -> Property
maskContentUnits =
  VirtualDom.attribute "maskContentUnits"


{-|-}
maskUnits :: JSString -> Property
maskUnits =
  VirtualDom.attribute "maskUnits"


{-|-}
mathematical :: JSString -> Property
mathematical =
  VirtualDom.attribute "mathematical"


{-|-}
max :: JSString -> Property
max =
  VirtualDom.attribute "max"


{-|-}
media :: JSString -> Property
media =
  VirtualDom.attribute "media"


{-|-}
method :: JSString -> Property
method =
  VirtualDom.attribute "method"


{-|-}
min :: JSString -> Property
min =
  VirtualDom.attribute "min"


{-|-}
mode :: JSString -> Property
mode =
  VirtualDom.attribute "mode"


{-|-}
name :: JSString -> Property
name =
  VirtualDom.attribute "name"


{-|-}
numOctaves :: JSString -> Property
numOctaves =
  VirtualDom.attribute "numOctaves"


{-|-}
offset :: JSString -> Property
offset =
  VirtualDom.attribute "offset"


{-|-}
operator :: JSString -> Property
operator =
  VirtualDom.attribute "operator"


{-|-}
order :: JSString -> Property
order =
  VirtualDom.attribute "order"


{-|-}
orient :: JSString -> Property
orient =
  VirtualDom.attribute "orient"


{-|-}
orientation :: JSString -> Property
orientation =
  VirtualDom.attribute "orientation"


{-|-}
origin :: JSString -> Property
origin =
  VirtualDom.attribute "origin"


{-|-}
overlinePosition :: JSString -> Property
overlinePosition =
  VirtualDom.attribute "overline-position"


{-|-}
overlineThickness :: JSString -> Property
overlineThickness =
  VirtualDom.attribute "overline-thickness"


{-|-}
panose1 :: JSString -> Property
panose1 =
  VirtualDom.attribute "panose-1"


{-|-}
path :: JSString -> Property
path =
  VirtualDom.attribute "path"


{-|-}
pathLength :: JSString -> Property
pathLength =
  VirtualDom.attribute "pathLength"


{-|-}
patternContentUnits :: JSString -> Property
patternContentUnits =
  VirtualDom.attribute "patternContentUnits"


{-|-}
patternTransform :: JSString -> Property
patternTransform =
  VirtualDom.attribute "patternTransform"


{-|-}
patternUnits :: JSString -> Property
patternUnits =
  VirtualDom.attribute "patternUnits"


{-|-}
pointOrder :: JSString -> Property
pointOrder =
  VirtualDom.attribute "point-order"


{-|-}
points :: JSString -> Property
points =
  VirtualDom.attribute "points"


{-|-}
pointsAtX :: JSString -> Property
pointsAtX =
  VirtualDom.attribute "pointsAtX"


{-|-}
pointsAtY :: JSString -> Property
pointsAtY =
  VirtualDom.attribute "pointsAtY"


{-|-}
pointsAtZ :: JSString -> Property
pointsAtZ =
  VirtualDom.attribute "pointsAtZ"


{-|-}
preserveAlpha :: JSString -> Property
preserveAlpha =
  VirtualDom.attribute "preserveAlpha"


{-|-}
preserveAspectRatio :: JSString -> Property
preserveAspectRatio =
  VirtualDom.attribute "preserveAspectRatio"


{-|-}
primitiveUnits :: JSString -> Property
primitiveUnits =
  VirtualDom.attribute "primitiveUnits"


{-|-}
r :: JSString -> Property
r =
  VirtualDom.attribute "r"


{-|-}
radius :: JSString -> Property
radius =
  VirtualDom.attribute "radius"


{-|-}
refX :: JSString -> Property
refX =
  VirtualDom.attribute "refX"


{-|-}
refY :: JSString -> Property
refY =
  VirtualDom.attribute "refY"


{-|-}
renderingIntent :: JSString -> Property
renderingIntent =
  VirtualDom.attribute "rendering-intent"


{-|-}
repeatCount :: JSString -> Property
repeatCount =
  VirtualDom.attribute "repeatCount"


{-|-}
repeatDur :: JSString -> Property
repeatDur =
  VirtualDom.attribute "repeatDur"


{-|-}
requiredExtensions :: JSString -> Property
requiredExtensions =
  VirtualDom.attribute "requiredExtensions"


{-|-}
requiredFeatures :: JSString -> Property
requiredFeatures =
  VirtualDom.attribute "requiredFeatures"


{-|-}
restart :: JSString -> Property
restart =
  VirtualDom.attribute "restart"


{-|-}
result :: JSString -> Property
result =
  VirtualDom.attribute "result"


{-|-}
rotate :: JSString -> Property
rotate =
  VirtualDom.attribute "rotate"


{-|-}
rx :: JSString -> Property
rx =
  VirtualDom.attribute "rx"


{-|-}
ry :: JSString -> Property
ry =
  VirtualDom.attribute "ry"


{-|-}
scale :: JSString -> Property
scale =
  VirtualDom.attribute "scale"


{-|-}
seed :: JSString -> Property
seed =
  VirtualDom.attribute "seed"


{-|-}
slope :: JSString -> Property
slope =
  VirtualDom.attribute "slope"


{-|-}
spacing :: JSString -> Property
spacing =
  VirtualDom.attribute "spacing"


{-|-}
specularConstant :: JSString -> Property
specularConstant =
  VirtualDom.attribute "specularConstant"


{-|-}
specularExponent :: JSString -> Property
specularExponent =
  VirtualDom.attribute "specularExponent"


{-|-}
speed :: JSString -> Property
speed =
  VirtualDom.attribute "speed"


{-|-}
spreadMethod :: JSString -> Property
spreadMethod =
  VirtualDom.attribute "spreadMethod"


{-|-}
startOffset :: JSString -> Property
startOffset =
  VirtualDom.attribute "startOffset"


{-|-}
stdDeviation :: JSString -> Property
stdDeviation =
  VirtualDom.attribute "stdDeviation"


{-|-}
stemh :: JSString -> Property
stemh =
  VirtualDom.attribute "stemh"


{-|-}
stemv :: JSString -> Property
stemv =
  VirtualDom.attribute "stemv"


{-|-}
stitchTiles :: JSString -> Property
stitchTiles =
  VirtualDom.attribute "stitchTiles"


{-|-}
strikethroughPosition :: JSString -> Property
strikethroughPosition =
  VirtualDom.attribute "strikethrough-position"


{-|-}
strikethroughThickness :: JSString -> Property
strikethroughThickness =
  VirtualDom.attribute "strikethrough-thickness"


{-|-}
string :: JSString -> Property
string =
  VirtualDom.attribute "string"


{-|-}
style :: JSString -> Property
style =
  VirtualDom.attribute "style"


{-|-}
surfaceScale :: JSString -> Property
surfaceScale =
  VirtualDom.attribute "surfaceScale"


{-|-}
systemLanguage :: JSString -> Property
systemLanguage =
  VirtualDom.attribute "systemLanguage"


{-|-}
tableValues :: JSString -> Property
tableValues =
  VirtualDom.attribute "tableValues"


{-|-}
target :: JSString -> Property
target =
  VirtualDom.attribute "target"


{-|-}
targetX :: JSString -> Property
targetX =
  VirtualDom.attribute "targetX"


{-|-}
targetY :: JSString -> Property
targetY =
  VirtualDom.attribute "targetY"


{-|-}
textLength :: JSString -> Property
textLength =
  VirtualDom.attribute "textLength"


{-|-}
title :: JSString -> Property
title =
  VirtualDom.attribute "title"


{-|-}
to :: JSString -> Property
to =
  VirtualDom.attribute "to"


{-|-}
transform :: JSString -> Property
transform =
  VirtualDom.attribute "transform"


{-|-}
type' :: JSString -> Property
type' =
  VirtualDom.attribute "type"


{-|-}
u1 :: JSString -> Property
u1 =
  VirtualDom.attribute "u1"


{-|-}
u2 :: JSString -> Property
u2 =
  VirtualDom.attribute "u2"


{-|-}
underlinePosition :: JSString -> Property
underlinePosition =
  VirtualDom.attribute "underline-position"


{-|-}
underlineThickness :: JSString -> Property
underlineThickness =
  VirtualDom.attribute "underline-thickness"


{-|-}
unicode :: JSString -> Property
unicode =
  VirtualDom.attribute "unicode"


{-|-}
unicodeRange :: JSString -> Property
unicodeRange =
  VirtualDom.attribute "unicode-range"


{-|-}
unitsPerEm :: JSString -> Property
unitsPerEm =
  VirtualDom.attribute "units-per-em"


{-|-}
vAlphabetic :: JSString -> Property
vAlphabetic =
  VirtualDom.attribute "v-alphabetic"


{-|-}
vHanging :: JSString -> Property
vHanging =
  VirtualDom.attribute "v-hanging"


{-|-}
vIdeographic :: JSString -> Property
vIdeographic =
  VirtualDom.attribute "v-ideographic"


{-|-}
vMathematical :: JSString -> Property
vMathematical =
  VirtualDom.attribute "v-mathematical"


{-|-}
values :: JSString -> Property
values =
  VirtualDom.attribute "values"


{-|-}
version :: JSString -> Property
version =
  VirtualDom.attribute "version"


{-|-}
vertAdvY :: JSString -> Property
vertAdvY =
  VirtualDom.attribute "vert-adv-y"


{-|-}
vertOriginX :: JSString -> Property
vertOriginX =
  VirtualDom.attribute "vert-origin-x"


{-|-}
vertOriginY :: JSString -> Property
vertOriginY =
  VirtualDom.attribute "vert-origin-y"


{-|-}
viewBox :: JSString -> Property
viewBox =
  VirtualDom.attribute "viewBox"


{-|-}
viewTarget :: JSString -> Property
viewTarget =
  VirtualDom.attribute "viewTarget"


{-|-}
width :: JSString -> Property
width =
  VirtualDom.attribute "width"


{-|-}
widths :: JSString -> Property
widths =
  VirtualDom.attribute "widths"


{-|-}
x :: JSString -> Property
x =
  VirtualDom.attribute "x"


{-|-}
xHeight :: JSString -> Property
xHeight =
  VirtualDom.attribute "x-height"


{-|-}
x1 :: JSString -> Property
x1 =
  VirtualDom.attribute "x1"


{-|-}
x2 :: JSString -> Property
x2 =
  VirtualDom.attribute "x2"


{-|-}
xChannelSelector :: JSString -> Property
xChannelSelector =
  VirtualDom.attribute "xChannelSelector"


-- {-|-}
-- xlinkActuate :: JSString -> Property
-- xlinkActuate =
--   VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:actuate"
--
--
-- {-|-}
-- xlinkArcrole :: JSString -> Property
-- xlinkArcrole =
--   VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:arcrole"
--
--
-- {-|-}
-- xlinkHref :: JSString -> Property
-- xlinkHref =
--   VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:href"
--
--
-- {-|-}
-- xlinkRole :: JSString -> Property
-- xlinkRole =
--   VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:role"
--
--
-- {-|-}
-- xlinkShow :: JSString -> Property
-- xlinkShow =
--   VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:show"
--
--
-- {-|-}
-- xlinkTitle :: JSString -> Property
-- xlinkTitle =
--   VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:title"
--
--
-- {-|-}
-- xlinkType :: JSString -> Property
-- xlinkType =
--   VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:type"
--
--
-- {-|-}
-- xmlBase :: JSString -> Property
-- xmlBase =
--   VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:base"
--
--
-- {-|-}
-- xmlLang :: JSString -> Property
-- xmlLang =
--   VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:lang"
--
--
-- {-|-}
-- xmlSpace :: JSString -> Property
-- xmlSpace =
--   VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:space"


{-|-}
y :: JSString -> Property
y =
  VirtualDom.attribute "y"


{-|-}
y1 :: JSString -> Property
y1 =
  VirtualDom.attribute "y1"


{-|-}
y2 :: JSString -> Property
y2 =
  VirtualDom.attribute "y2"


{-|-}
yChannelSelector :: JSString -> Property
yChannelSelector =
  VirtualDom.attribute "yChannelSelector"


{-|-}
z :: JSString -> Property
z =
  VirtualDom.attribute "z"


{-|-}
zoomAndPan :: JSString -> Property
zoomAndPan =
  VirtualDom.attribute "zoomAndPan"



-- Presentation VirtualDom.attributes

{-|-}
alignmentBaseline :: JSString -> Property
alignmentBaseline =
  VirtualDom.attribute "alignment-baseline"


{-|-}
baselineShift :: JSString -> Property
baselineShift =
  VirtualDom.attribute "baseline-shift"


{-|-}
clipPath :: JSString -> Property
clipPath =
  VirtualDom.attribute "clip-path"


{-|-}
clipRule :: JSString -> Property
clipRule =
  VirtualDom.attribute "clip-rule"


{-|-}
clip :: JSString -> Property
clip =
  VirtualDom.attribute "clip"


{-|-}
colorInterpolationFilters :: JSString -> Property
colorInterpolationFilters =
  VirtualDom.attribute "color-interpolation-filters"


{-|-}
colorInterpolation :: JSString -> Property
colorInterpolation =
  VirtualDom.attribute "color-interpolation"


{-|-}
colorProfile :: JSString -> Property
colorProfile =
  VirtualDom.attribute "color-profile"


{-|-}
colorRendering :: JSString -> Property
colorRendering =
  VirtualDom.attribute "color-rendering"


{-|-}
color :: JSString -> Property
color =
  VirtualDom.attribute "color"


{-|-}
cursor :: JSString -> Property
cursor =
  VirtualDom.attribute "cursor"


{-|-}
direction :: JSString -> Property
direction =
  VirtualDom.attribute "direction"


{-|-}
display :: JSString -> Property
display =
  VirtualDom.attribute "display"


{-|-}
dominantBaseline :: JSString -> Property
dominantBaseline =
  VirtualDom.attribute "dominant-baseline"


{-|-}
enableBackground :: JSString -> Property
enableBackground =
  VirtualDom.attribute "enable-background"


{-|-}
fillOpacity :: JSString -> Property
fillOpacity =
  VirtualDom.attribute "fill-opacity"


{-|-}
fillRule :: JSString -> Property
fillRule =
  VirtualDom.attribute "fill-rule"


{-|-}
fill :: JSString -> Property
fill =
  VirtualDom.attribute "fill"


{-|-}
filter :: JSString -> Property
filter =
  VirtualDom.attribute "filter"


{-|-}
floodColor :: JSString -> Property
floodColor =
  VirtualDom.attribute "flood-color"


{-|-}
floodOpacity :: JSString -> Property
floodOpacity =
  VirtualDom.attribute "flood-opacity"


{-|-}
fontFamily :: JSString -> Property
fontFamily =
  VirtualDom.attribute "font-family"


{-|-}
fontSizeAdjust :: JSString -> Property
fontSizeAdjust =
  VirtualDom.attribute "font-size-adjust"


{-|-}
fontSize :: JSString -> Property
fontSize =
  VirtualDom.attribute "font-size"


{-|-}
fontStretch :: JSString -> Property
fontStretch =
  VirtualDom.attribute "font-stretch"


{-|-}
fontStyle :: JSString -> Property
fontStyle =
  VirtualDom.attribute "font-style"


{-|-}
fontVariant :: JSString -> Property
fontVariant =
  VirtualDom.attribute "font-variant"


{-|-}
fontWeight :: JSString -> Property
fontWeight =
  VirtualDom.attribute "font-weight"


{-|-}
glyphOrientationHorizontal :: JSString -> Property
glyphOrientationHorizontal =
  VirtualDom.attribute "glyph-orientation-horizontal"


{-|-}
glyphOrientationVertical :: JSString -> Property
glyphOrientationVertical =
  VirtualDom.attribute "glyph-orientation-vertical"


{-|-}
imageRendering :: JSString -> Property
imageRendering =
  VirtualDom.attribute "image-rendering"


{-|-}
kerning :: JSString -> Property
kerning =
  VirtualDom.attribute "kerning"


{-|-}
letterSpacing :: JSString -> Property
letterSpacing =
  VirtualDom.attribute "letter-spacing"


{-|-}
lightingColor :: JSString -> Property
lightingColor =
  VirtualDom.attribute "lighting-color"


{-|-}
markerEnd :: JSString -> Property
markerEnd =
  VirtualDom.attribute "marker-end"


{-|-}
markerMid :: JSString -> Property
markerMid =
  VirtualDom.attribute "marker-mid"


{-|-}
markerStart :: JSString -> Property
markerStart =
  VirtualDom.attribute "marker-start"


{-|-}
mask :: JSString -> Property
mask =
  VirtualDom.attribute "mask"


{-|-}
opacity :: JSString -> Property
opacity =
  VirtualDom.attribute "opacity"


{-|-}
overflow :: JSString -> Property
overflow =
  VirtualDom.attribute "overflow"


{-|-}
pointerEvents :: JSString -> Property
pointerEvents =
  VirtualDom.attribute "pointer-events"


{-|-}
shapeRendering :: JSString -> Property
shapeRendering =
  VirtualDom.attribute "shape-rendering"


{-|-}
stopColor :: JSString -> Property
stopColor =
  VirtualDom.attribute "stop-color"


{-|-}
stopOpacity :: JSString -> Property
stopOpacity =
  VirtualDom.attribute "stop-opacity"


{-|-}
strokeDasharray :: JSString -> Property
strokeDasharray =
  VirtualDom.attribute "stroke-dasharray"


{-|-}
strokeDashoffset :: JSString -> Property
strokeDashoffset =
  VirtualDom.attribute "stroke-dashoffset"


{-|-}
strokeLinecap :: JSString -> Property
strokeLinecap =
  VirtualDom.attribute "stroke-linecap"


{-|-}
strokeLinejoin :: JSString -> Property
strokeLinejoin =
  VirtualDom.attribute "stroke-linejoin"


{-|-}
strokeMiterlimit :: JSString -> Property
strokeMiterlimit =
  VirtualDom.attribute "stroke-miterlimit"


{-|-}
strokeOpacity :: JSString -> Property
strokeOpacity =
  VirtualDom.attribute "stroke-opacity"


{-|-}
strokeWidth :: JSString -> Property
strokeWidth =
  VirtualDom.attribute "stroke-width"


{-|-}
stroke :: JSString -> Property
stroke =
  VirtualDom.attribute "stroke"


{-|-}
textAnchor :: JSString -> Property
textAnchor =
  VirtualDom.attribute "text-anchor"


{-|-}
textDecoration :: JSString -> Property
textDecoration =
  VirtualDom.attribute "text-decoration"


{-|-}
textRendering :: JSString -> Property
textRendering =
  VirtualDom.attribute "text-rendering"


{-|-}
unicodeBidi :: JSString -> Property
unicodeBidi =
  VirtualDom.attribute "unicode-bidi"


{-|-}
visibility :: JSString -> Property
visibility =
  VirtualDom.attribute "visibility"


{-|-}
wordSpacing :: JSString -> Property
wordSpacing =
  VirtualDom.attribute "word-spacing"


{-|-}
writingMode :: JSString -> Property
writingMode =
  VirtualDom.attribute "writing-mode"


-- Internal

-- TODO use something faster for all conversions
showJS = Data.JSString.pack . show
