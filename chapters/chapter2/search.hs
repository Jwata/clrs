module Search
(
  linearSearch
) where

linearSearch :: Eq a => [a] -> a -> Maybe Int
linearSearch [] _ = Nothing
linearSearch list target = search list target 0

search :: Eq a => [a] -> a -> Int -> Maybe Int
search list target index
  | len <= index = Nothing
  | el == target = Just index
  | otherwise = search list target (index + 1)
  where el = list !! index
        len = length list
