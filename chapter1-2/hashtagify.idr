pipe : (a -> b) -> (b -> c) -> a -> c
-- pipe f g x = g (f x)
pipe f g x = ?pipe_rhs

-- pipeAll : List -> a -> z



addHash : String -> String
addHash = strCons '#'

hashtagify : String -> String
hashtagify = pipe words (pipe (map addHash) unwords)
-- hashtagify = pipeAll [words (map addHash) unwords]
