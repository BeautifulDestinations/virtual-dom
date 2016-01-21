
{-# LANGUAGE OverloadedStrings #-}

import Web.VirtualDom
import Control.Concurrent(threadDelay)

main = do
  putStrLn "Hello!"
  let node1 = text "Hello DOM!"
  let node2 = text "Hello different text!"
  domN <- createElement node1
  utilPutInBody domN
  threadDelay 1000000

  p <- diff node1 node2
  domN2 <- patch domN p

  return ()
