top_ten : Ord a => List a -> List a
top_ten x = take 10 (reverse (sort x))
