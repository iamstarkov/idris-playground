import Data.Vect

-- total allLengths : Vect len String -> Vect len Nat
-- allLengths [] = []
-- allLengths (word :: words) = length word :: allLengths words

total allLengths : Vect len String -> Vect len Nat
allLengths [] = []
allLengths (x :: xs) = length x :: allLengths xs
