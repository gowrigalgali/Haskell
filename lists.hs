import Data.Binary.Get (label)
-- length of a list
mylength :: [Int]-> Int
mylength [] = 0
mylength (x:xs) = 1 + mylength xs

-- to append from the right
appendr :: Int-> [Int]-> [Int]
appendr x [] = [x]
appendr x (y:ys) = y: (appendr x ys)

attach :: [Int]-> [Int]->[Int]
attach [] l = l
attach (x:xs) l = x: (attach xs l)      -- Built in operator ++ to do this : [1,2,3]++[2,4,6]

reverse_list :: [Int]-> [Int]
reverse_list []=[]
reverse_list (x:xs) = reverse_list(xs)++[x]


main :: IO()
main = do
    print(mylength[2,3,4,5])
    print (appendr 34 [45,2,6,3])
    print (attach [1,2,3] [4,5])
    print (reverse_list [0,2,5,7])
    -- print (fetch["Haskell","Hello","Me","High","What"])
    -- print (maxNum [1,2,50,0])
