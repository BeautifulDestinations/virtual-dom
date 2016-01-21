
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
class_ = VirtualDom.attribute "className"

type_ :: JSString -> Property
type_ = VirtualDom.attribute "type"

-- Int?
min :: Int -> Property
min = VirtualDom.attribute "min" . showJS

-- Int?
max :: Int -> Property
max = VirtualDom.attribute "max" . showJS

key :: Int -> Property
key = VirtualDom.attribute "key" . showJS

width :: Int -> Property
width = VirtualDom.attribute "width" . showJS

height :: Int -> Property
height = VirtualDom.attribute "height" . showJS


-- Internal

-- TODO use something faster for all conversions
showJS = Data.JSString.pack . show
