import System.IO

-- Loads lines from a text file into a list
getLines :: FilePath -> IO [String]
getLines path = do contents <- readFile path
                   return (lines contents)

main = do
    nouns <- getLines "nouns.txt"
    adjs <- getLines "adjectives.txt"

    let noun = head nouns
    let adj = head adjs

    putStr $ "You are a" ++ adj ++ " " ++ noun
