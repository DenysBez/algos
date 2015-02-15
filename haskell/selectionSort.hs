{--
	Selection sort steps:
	Find the smallest item in the array, and exchange it with the first element. 
	Find the next smallest item and exchange it with the second entry.

	Complexity: todo
--}
selectionSort :: (Ord a) => [a] -> [a]
selectionSort [] = []
selectionSort ilist = let
    minElem = minimum ilist in minElem : selectionSort (drop 1 (chngHeadPos minElem ilist))
    where chngHeadPos _ [] = []
          chngHeadPos minElem (x:xs)
            | minElem == x = head ilist : xs
            | otherwise = x : chngHeadPos minElem xs
