module Main

import palindrome

isPalindrome : String -> String
isPalindrome str = if (palindrome str) then "String is a palindrome\n" else "String is not a palindrome\n"

main : IO ()
main = repl "Enter a palindrome: " isPalindrome
