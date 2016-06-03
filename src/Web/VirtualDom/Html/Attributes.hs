
{-# LANGUAGE OverloadedStrings, NoMonomorphismRestriction #-}

module Web.VirtualDom.Html.Attributes
    ( id
    , href
    , src
    , alt
    , title
    , disabled
    , checked
    , draggable
    , placeholder
    , autofocus
    , multiple
    , accept
    , selected
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
    , step

    , class_
    , type_
    )
    where

import Prelude hiding (id, min, max)
import Data.JSString

import Web.VirtualDom.Html (Property)
import qualified Web.VirtualDom as VirtualDom

id :: JSString -> Property
id = VirtualDom.attribute "id"

href :: JSString -> Property
href = VirtualDom.attribute "href"

src :: JSString -> Property
src = VirtualDom.attribute "src"

alt :: JSString -> Property
alt = VirtualDom.attribute "alt"

title :: JSString -> Property
title = VirtualDom.attribute "title"

disabled :: Bool -> Property
disabled = VirtualDom.attribute "disabled" . showJS

checked :: Bool -> Property
checked = VirtualDom.attribute "checked" . showJS

placeholder :: JSString -> Property
placeholder = VirtualDom.attribute "placeholder"

autofocus :: Bool -> Property
autofocus = VirtualDom.attribute "autofocus" . showJS

multiple :: Bool -> Property
multiple = VirtualDom.attribute "multiple" . showJS

draggable :: Bool -> Property
draggable = VirtualDom.attribute "draggable" . showJS

accept :: JSString -> Property
accept = VirtualDom.attribute "accept"

selected :: Bool -> Property
selected = VirtualDom.attribute "selected" . showJS

style :: JSString -> Property
style = VirtualDom.attribute "style"

lang :: JSString -> Property
lang = VirtualDom.attribute "lang"

name :: JSString -> Property
name = VirtualDom.attribute "name"

target :: JSString -> Property
target = VirtualDom.attribute "target"

value :: JSString -> Property
value = VirtualDom.attribute "value"

class_ :: JSString -> Property
class_ = VirtualDom.attribute "class"

type_ :: JSString -> Property
type_ = VirtualDom.attribute "type"

-- Int?
min :: Int -> Property
min = VirtualDom.attribute "min" . showJS

-- Int?
max :: Int -> Property
max = VirtualDom.attribute "max" . showJS

-- Int?
step :: Int -> Property
step = VirtualDom.attribute "step" . showJS

key :: Int -> Property
key = VirtualDom.attribute "key" . showJS

width :: Int -> Property
width = VirtualDom.attribute "width" . showJS

height :: Int -> Property
height = VirtualDom.attribute "height" . showJS


-- Internal

-- TODO use something faster for all conversions
showJS = Data.JSString.pack . show
