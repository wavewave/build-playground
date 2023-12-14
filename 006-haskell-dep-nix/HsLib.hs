{-# LANGUAGE OverloadedStrings #-}

module HsLib where

import Data.Aeson
import Data.Text (Text)

data Person = Person { name :: Text, age :: Int } deriving Show

instance FromJSON Person where
  parseJSON =
    withObject "Person" $ \v ->
      Person
        <$> v .: "name"
        <*> v .: "age"

testAeson :: IO ()
testAeson = do
  print (decode "{\"name\":\"Joe\",\"age\":12}" :: Maybe Person)

helloFromHaskellLib :: IO ()
helloFromHaskellLib =
  putStrLn "Hello from Haskell Library"
