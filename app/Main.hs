{-# LANGUAGE OverloadedStrings #-}
module Main where

import Lib
import Network.Wai
import Network.HTTP.Types
import Network.Wai.Handler.Warp (run)
import Data.ByteString.Lazy.Char8 ()

app :: Application
app req f = f $ responseLBS status200 [("Content-Type", "text/html")] hello

main :: IO ()
main = do
    let port = 8080
    putStrLn $ "Listening on port " ++ show port
    run port app
