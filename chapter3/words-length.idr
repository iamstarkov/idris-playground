wordsLength : List String -> List Nat
wordsLength [] = []
wordsLength (x :: xs) = length x :: wordsLength xs
