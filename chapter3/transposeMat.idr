import Data.Vect

createEmpties : Vect n (Vect 0 elem)
createEmpties = replicate _ []

transposeMat : Vect m (Vect n elem) -> Vect n (Vect m elem)
transposeMat [] = createEmpties
transposeMat (x :: xs) = let xsTrans = transposeMat xs in
                        zipWith (::) x xsTrans

addMatrix : Num a => Vect n (Vect m a) -> Vect n (Vect m a) -> Vect n (Vect m a)
addMatrix [] [] = []
addMatrix (x :: xs) (y :: ys) = zipWith (+) x y :: addMatrix xs ys


multVecs : Num a => (xs : Vect n a) -> (ys : Vect n a) -> a
multVecs xs ys = sum (zipWith (*) xs ys)

mkRow : Num a => (x : Vect n a) -> (ys_trans : Vect p (Vect n a)) -> Vect p a
mkRow x [] = []
mkRow x (y :: xs) = multVecs x y :: mkRow x xs

multMatrix_helper : Num a => (xs : Vect m (Vect n a)) -> (ys_trans : Vect p (Vect n a)) -> Vect m (Vect p a)
multMatrix_helper [] ys_trans = []
multMatrix_helper (x :: xs) ys_trans
     = mkRow x ys_trans :: multMatrix_helper xs ys_trans

multMatrix : Num a => Vect m (Vect n a) -> Vect n (Vect p a) -> Vect m (Vect p a)
multMatrix xs ys = let ys_trans = transpose_mat ys in
                       multMatrix_helper xs ys_trans
