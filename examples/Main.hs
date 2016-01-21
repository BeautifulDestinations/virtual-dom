
{-# LANGUAGE OverloadedStrings #-}

import Web.VirtualDom

main = do
  putStrLn "Hello!"
  root <- createElement (text "Hello DOM!")
  utilPutInBody root
