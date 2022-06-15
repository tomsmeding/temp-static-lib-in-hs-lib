{-# LANGUAGE ForeignFunctionInterface #-}
module Lib where

foreign import ccall "thing" c_thing :: IO ()

thing :: IO ()
thing = c_thing
