over_length : Nat -> List String -> Nat
over_length limit strings = length (filter (\x => length x > limit) strings)
