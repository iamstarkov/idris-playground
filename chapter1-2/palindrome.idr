module palindrome

export
palindrome : String -> Bool
palindrome str = reverse (toLower str) == toLower str
