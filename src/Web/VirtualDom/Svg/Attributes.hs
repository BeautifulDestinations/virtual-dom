
{-# LANGUAGE OverloadedStrings #-}

module Web.VirtualDom.Svg.Attributes
    (
    )
    where

import Prelude hiding (id, min, max)
import Data.JSString

import Web.VirtualDom.Svg (Property)
import qualified Web.VirtualDom as VirtualDom


-- TODO

-- Internal

-- TODO use something faster for all conversions
showJS = Data.JSString.pack . show
