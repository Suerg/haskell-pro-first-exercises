-- curryExercises.hs
module CurryExercises where

exclaim = flip (++) "!"

lastOfFirst = last . head . words

lastWord = last . words

thirdLetter :: String -> Char
thirdLetter s
  | len >= 3 = s !! 2
  | otherwise = error "string must have at least 3 chars!"
  where len = length s

letterIndex :: Int -> Char
letterIndex x
  | len > x = s !! x
  | otherwise = error "x must be within the len of str"
  where s = "Curry is awesome!"
        len = length s

-- s = "Curry is awesome"
rvrs :: String -> String
rvrs s = awesome ++ " " ++ is ++ " " ++ curry
  where
    curry = take 5 s
    isAwesome = drop 6 s
    is = take 2 isAwesome
    awesome = drop 3 isAwesome

