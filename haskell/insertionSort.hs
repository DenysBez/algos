{--
	Each iteration, insertion sort take one element from the input data, 	
	finds the location it belongs within the sorted list, and inserts it there. 
	It repeats until no input elements remain.
--}

insertionSort :: (Ord a) => [a] -> [a]
insertionSort ilist = insertionSort' 0 ilist
insertionSort' _ [] = []
insertionSort' selElemIdx ilist =
    if(selElemIdx) >= length ilist
        then ilist
    else
        insertionSort' (selElemIdx + 1) (compareInsert (selElemIdx) ilist)
        where  compareInsert 0 x = x
               compareInsert backItrIdx procIList =                
                let curElement = procIList !! backItrIdx
                    prevElement = procIList !! (backItrIdx - 1)
                in
                if(curElement == prevElement)
                    then procIList
                else if(prevElement > curElement)
                    then compareInsert (backItrIdx - 1) (replaceNth backItrIdx prevElement (replaceNth (backItrIdx - 1) curElement procIList))
                else
                    procIList


replaceNth n newVal (x:xs)
     | n == 0 = newVal:xs
     | otherwise = x:replaceNth (n-1) newVal xs
