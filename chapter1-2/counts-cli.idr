module Main

import counts

stringStats : String -> String
stringStats str = "Words: " ++ (show (fst (counts str))) ++ "\nCharacters: " ++ (show (snd (counts str))) ++ "\n"

main : IO ()
main = repl "Enter a string: " stringStats
