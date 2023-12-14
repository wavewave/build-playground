{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module HsLib where

import Data.Aeson
import Data.Text (Text)
import Language.Haskell.TH (runIO)
import Language.Haskell.TH.Syntax (addDependentFile)
import System.Directory (getCurrentDirectory, getDirectoryContents)

$(do addDependentFile "myfile.txt"
     runIO $ do
       dir <- getCurrentDirectory
       contents <- getDirectoryContents dir
       putStrLn $ "cwd = " <> dir
       mapM_ putStrLn contents
       txt <- readFile "myfile.txt"
       putStrLn $ "myfile.txt = " <> txt
     pure []
 )

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
