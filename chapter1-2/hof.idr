twice : (a -> a) -> a -> a
twice f x = f (f x)

double : Num tx => tx -> tx
double x = x + x

Shape : Type
rotate : Shape -> Shape

quadruple : Num n => n -> n
quadruple = twice double

turn_around : Shape -> Shape
turn_around = twice rotate
