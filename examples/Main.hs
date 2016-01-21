
{-# LANGUAGE OverloadedStrings #-}

import Control.Applicative
import Data.Monoid
import GHCJS.Types (JSVal, jsval)
import Data.JSString
import Web.VirtualDom
import Control.Concurrent(threadDelay)
import System.IO.Unsafe (unsafePerformIO)

import qualified Web.VirtualDom.Html as E
import qualified Web.VirtualDom.Html.Attributes as A

import GHCJS.Foreign.Callback as CB

wrap k = unsafePerformIO $ do
  cb <- CB.syncCallback1 CB.ThrowWouldBlock k
  return $ jsval cb

on' n k = property ("on" <> n) $ wrap k

main = do
  putStrLn "Hello!"


  let node1 = text "Hello DOM!"


  let node2 = E.div
            [ A.style "color:red"
            , on' "copy"  $ \_ -> print "copied!"
            , on' "click" $ \_ -> print "clicked!"
            ]
            [ E.div
              []
              [ E.h1 [] $ pure $ E.text "Hello different text!"
              , E.h2 [] $ pure $ E.text "Hi!"
              , E.form
                []
                [ E.input [A.type_ "number", A.value "2"] []
                , E.input [A.type_ "range", A.min 0, A.max 10, A.value "2"] []
                , E.input [] []
                ]
              ]
            ]


  domN <- createElement node1
  appendToBody domN
  threadDelay 1000000

  p <- diff node1 node2
  domN2 <- patch domN p

  return ()
