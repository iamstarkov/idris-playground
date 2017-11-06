pipe : (a -> b) -> (b -> c) -> a -> c
pipe f g x = g (f x)

pipeAll : List -> a -> z



addHash : String -> String
addHash = strCons '#'

hashtagify : String -> String
hashtagify = pipe words (pipe (map addHash) unwords)
-- hashtagify = pipeAll [words (map addHash) unwords]
