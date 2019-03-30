-- file: ch01/WC.hs
-- lines beginning with "--" are comments.
-- prints the number of lines, words and characters

main = interact wordCount
    where wordCount input = show (length (lines input)) ++ " " ++  show(length (words input)) ++ " "  ++  show (length input) ++ "\n"