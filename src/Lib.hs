{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( hello
    ) where

import Data.ByteString.Lazy.Internal

hello :: ByteString
hello = "hello world\n"
