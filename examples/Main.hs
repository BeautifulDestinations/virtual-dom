
{-# LANGUAGE OverloadedStrings #-}

import Control.Applicative
import GHCJS.Types (JSVal, jsval)
import Data.JSString
import Web.VirtualDom
import Control.Concurrent(threadDelay)

import qualified Web.VirtualDom.Html as E
import qualified Web.VirtualDom.Html.Attributes as A

foreign import javascript unsafe  "(function(){console.log($1)})"
  sayCb :: JSString -> JSVal

main = do
  putStrLn "Hello!"
  let node1 = text "Hello DOM!"


  let node2 = E.div
            [ A.style "color:red"
            , property "oncopy" (sayCb "copied")
            , property "onclick" (sayCb "clicked")
            ]
            [ E.div
              []
              [ E.h1 [] $ pure $ E.text "Hello different text!"
              , E.form
                []
                [ E.input [] [ E.text "Test" ]
                ] 
              ]
            ]


  domN <- createElement node1
  appendToBody domN
  threadDelay 1000000

  p <- diff node1 node2
  domN2 <- patch domN p

  return ()
