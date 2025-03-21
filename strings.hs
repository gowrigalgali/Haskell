import Data.Char
capitalise :: String -> String 
capitalise []=[]
capitalise (x:xs)
    | x>= 'a' && x<= 'z' = chr(ord x -32) : capitalise xs
    | otherwise = x: capitalise xs 

countWords :: String -> Int
countWords s = length(filter(not.null)(words s))

main :: IO()
main = do
    print(capitalise "hello World")
    print (countWords "hello Haskell World")
   