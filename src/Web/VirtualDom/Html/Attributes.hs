
{-# LANGUAGE OverloadedStrings, NoMonomorphismRestriction #-}

module Web.VirtualDom.Html.Attributes
    ( id
    , href
    , src
    , alt
    , title
    , style
    , lang
    , name
    , target
    , value

    , key
    , width
    , height
    , min
    , max

    , class_
    , type_
    )
    where

import Prelude hiding (id, min, max)
-- import Json.Encode as Json
import Data.JSString
import qualified Web.VirtualDom as VirtualDom

id = VirtualDom.attribute "id"
href = VirtualDom.attribute "href"
src = VirtualDom.attribute "src"
alt = VirtualDom.attribute "alt"
title = VirtualDom.attribute "title"
style = VirtualDom.attribute "style"
lang = VirtualDom.attribute "lang"
name = VirtualDom.attribute "name"
target = VirtualDom.attribute "target"
value = VirtualDom.attribute "value"

class_ = VirtualDom.attribute "className"
type_ = VirtualDom.attribute "type"

min = VirtualDom.attribute "min" . showJS
max = VirtualDom.attribute "max" . showJS
key = VirtualDom.attribute "key" . showJS
width = VirtualDom.attribute "width" . showJS
height = VirtualDom.attribute "height" . showJS


showJS = Data.JSString.pack . show
