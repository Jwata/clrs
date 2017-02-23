module Search
(
  binarySearch
) where

binarySearch :: Ord a => [a] -> a -> Maybe Int
binarySearch xs value = search xs value from to
  where
    from = 0
    to = length xs - 1

search :: Ord a => [a] -> a -> Int -> Int -> Maybe Int
search xs value from to
  | from > to = Nothing
  | xs !! mid > value = search xs value from (mid - 1)
  | xs !! mid < value = search xs value (mid + 1) to
  | xs !! mid == value = Just mid
  | otherwise = Nothing
  where
    mid = (from + to) `div` 2
