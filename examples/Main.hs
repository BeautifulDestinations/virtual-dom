
{-# LANGUAGE OverloadedStrings #-}

import GHCJS.Types (JSVal, jsval)
import Data.JSString
import Web.VirtualDom
import Control.Concurrent(threadDelay)

foreign import javascript unsafe  "(function(){console.log($1)})"
  sayCb :: JSString -> JSVal

main = do
  putStrLn "Hello!"
  let node1 = text "Hello DOM!"


  let node2 = node "h1"
            [ attribute "style" "color:red"
            , property "oncopy" (sayCb "copied")
            , property "onclick" (sayCb "clicked")
            ]
            [ text "Hello different text!" ]


  domN <- createElement node1
  utilPutInBody domN
  threadDelay 1000000

  p <- diff node1 node2
  domN2 <- patch domN p

  return ()
