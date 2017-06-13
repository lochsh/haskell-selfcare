import System.IO
import System.Random (randomRIO)

-- Loads lines from a text file into a list
getLines :: FilePath -> IO [String]
getLines path = do contents <- readFile path
                   return (lines contents)

-- Select random element from list
randomPick :: [a] -> IO a
randomPick xs = fmap (xs !!) $ randomRIO (0, length xs - 1)

main = do
    nouns <- getLines "nouns.txt"
    adjs <- getLines "adjectives.txt"

    noun <- randomPick nouns
    adj <- randomPick adjs

    putStr $ "You are a" ++ adj ++ " " ++ noun
