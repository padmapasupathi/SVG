module Main where

import Generate
import ClientServerSpec
import System.Environment
import Git
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

--directory to output the generated files, you can change this if you want the project to be in
--a separate directory
outputDirectory = "."
--where the generator is, this shouldn't need to change
templateRoot = ".templates"

main :: IO ()
main = do
    args <- getArgs
    case args of
        [] -> do
            checkVersion
            generate outputDirectory templateRoot clientServerApp
        "update":_ -> updatePAL
        "version":_ -> do
            version <- T.unpack <$> TIO.readFile ".palversion"
            putStrLn $ "Version: " ++ version
            checkVersion
        _ -> putStrLn "Invalid option."


