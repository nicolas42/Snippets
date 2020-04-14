-- reverse-words.hs
main = interact $ unlines . zipWith (++)
  ["Case #" ++ show t ++ ": " | t <- [1..]] . map solve . tail . lines

solve = unwords . reverse . words
