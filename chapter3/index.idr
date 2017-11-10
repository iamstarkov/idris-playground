invert : Bool -> Bool
invert True = False
invert False = True

allLengths : List String -> List Nat
allLengths xs = map length xs

describeList : List String -> String
describeList [] = "Empty"
describeList (x :: xs) = "Non empty, Tail: " ++ show xs


isEven : Nat -> Bool
isEven Z = True
isEven (S k) = not (isEven k)
