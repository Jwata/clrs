module Sort
(
  insertionSort
) where

-- There's a simple solution using foldr and insert functions
-- insertionSort = foldr insert []

insert' :: Ord a => a -> [a] -> [a]
insert' x [] = [x]
insert' x (y:ys)
  | x < y = x : y : ys
  | otherwise = y : insert' x ys

insertionSort :: Ord a => [a] -> [a]
insertionSort [] = []
insertionSort [x] = [x]
insertionSort (x:xs) = insert' x $ insertionSort xs
