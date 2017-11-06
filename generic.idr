-- double : Int -> Int
-- double x = x + x

-- doubleNat : Nat -> Nat
-- doubleNat x = x + x

-- doubleInteger : Integer -> Integer
-- doubleInteger x = x + x

double : Num tx => tx -> tx
double x = x + x
