{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

import qualified HsLib

foreign import ccall safe "hello_from_cc" c_hello_from_cc :: IO ()

main :: IO ()
main = do
  putStrLn "Hello World in Main!"
  HsLib.helloFromHaskellLib
  HsLib.testAeson
  c_hello_from_cc
