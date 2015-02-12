{--
Selection sort steps:
Find the smallest item in the array, and exchange it with the first element. 
Find the next smallest item and exchange it with the second entry.
--}
selectSort :: (Ord a) => [a] -> [a]
selectSort [] = []
selectSort ilist = let
    minElem = minimum ilist in minElem : selectSort (swapElem minElem ilist)
    where swapElem _ [] = []
          swapElem minElem (x:xs)
            | minElem == x = xs
            | otherwise = x : swapElem minElem xs


