{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

foreign import ccall safe "hello_from_cc" c_hello_from_cc :: IO ()

main :: IO ()
main = do
  putStrLn "Hello World from Haskell!"
  c_hello_from_cc
