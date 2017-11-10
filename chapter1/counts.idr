module counts

export
counts : String -> (Nat, Nat)
counts x = (length (words x), length x)
