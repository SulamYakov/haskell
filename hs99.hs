--[x] Problem 1: Find the last element of a list. 

myLast :: (Eq a) => [a] -> Maybe a
myLast []       = Nothing  
myLast [x]      = Just x
myLast (x:xs)
    |  xs == [] = Just x
    | otherwise = myLast xs

--[x] Problem 2: Find the next-to-last element of a list.
 
myButLast :: (Eq a) => [a] -> Maybe a
myButLast []     = Nothing
myButLast [_]    = Nothing
myButLast [x,_]  = Just x
myButLast (_:xs) = myButLast xs

--[x] Problem 3: Find the k-th element of a list.

myElementAt :: (Eq a) => Int -> [a] -> Maybe a
myElementAt k xs
    | k > myLength xs = Nothing
    |       otherwise = myLast $ take k xs      
                        
      
--[x] Problem 4: Find the number of elements in a list.

myLength :: (Eq a) => [a] -> Int
myLength []     = 0
myLength (_:xs) = 1 + myLength xs

--[x] Problem 5: Reverse a list.

myReverse :: (Eq a) => [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

--[x] Problem 6: Determine whether or not a list is a palindrome.

myIsPalindrome :: (Eq a) => [a] -> Bool
myIsPalindrome xs = if xs == myReverse xs 
                     then True
                     else False

--[x] Problem 7: Flatten a nested list structure. 

data NestedList a = Elem a
                  | List [NestedList a]
                  deriving (Show, Eq)

myFlatten :: NestedList a -> [a]
myFlatten     (List []) = []
myFlatten     (Elem  x) = [x]
myFlatten (List (x:xs)) = myFlatten x ++ myFlatten (List xs)

--[x] Problem 8: Compress a list by removing repeating elements.

myCompress :: (Eq a) => [a] -> [a]
myCompress []  = []
myCompress [x] = [x]
myCompress (x:xs)
    | x /= head xs = [x] ++ myCompress xs
    |    otherwise = myCompress xs

--[x] Problem 9: Pack consecutive duplicates of list elements into sublists.

myPack :: (Eq a) => [a] -> [[a]]
myPack []  = []
myPack [x] = [[x]]
myPack  xs = [fst spanned_list] ++ myPack (snd spanned_list) 
                where 
                spanned_list = span (==(head xs)) xs

--[x] Problem 10: Encode the run-length of consecutive duplicates in a list.

myRunLength :: (Eq a) => [a] -> Maybe [(a, Int)]
myRunLength [] = Nothing
myRunLength xs = fmap tupler packed_list
                    where 
                    tupler = map (\ys -> (head ys, myLength ys))
                    packed_list = Just (myPack xs) 

--[x] Problem 11: Modify the result of problem 10 to send only non-singular elements as tuples, and singular elements as themselves. 
 
data CompressedString a = Single a
                        | Multiple Int a
                        deriving (Show, Eq)


myModifiedRunLength :: (Eq a) => [a] -> Maybe [CompressedString a]
myModifiedRunLength [] = Nothing
myModifiedRunLength xs = fmap encoder packed_list
                            where
                            encoder = map (\ys -> if (myLength ys == 1) 
                                                    then Single (head ys) 
                                                    else Multiple (myLength ys) (head ys))
                            packed_list = Just (myPack xs)

--[] Problem 12: 

--[] Problem 13:

--[] Problem 14:

--[] Problem 15:

--[] Problem 16:

--[] Problem 17:

--[] Problem 18:

--[] Problem 19:

--[] Problem 20:

--[] Problem 21:

--[] Problem 22:

--[] Problem 23:

--[] Problem 24:

--[] Problem 25:

--[] Problem 26:

--[] Problem 27:

--[] Problem 28:

--[] Problem 29:

--[] Problem 30:

--[] Problem 31:

--[] Problem 32:

--[] Problem 33:

--[] Problem 34:

--[] Problem 35:

--[] Problem 36:

--[] Problem 37:

--[] Problem 38:

--[] Problem 39:

--[] Problem 40:

--[] Problem 41:

--[] Problem 42:

--[] Problem 43:

--[] Problem 44:

--[] Problem 45:

--[] Problem 46:

--[] Problem 47:

--[] Problem 48:

--[] Problem 49:

--[] Problem 50:

--[] Problem 51:

--[] Problem 52:

--[] Problem 53:

--[] Problem 54:

--[] Problem 55:

--[] Problem 56:

--[] Problem 57:

--[] Problem 58:

--[] Problem 59:

--[] Problem 60:

--[] Problem 61:

--[] Problem 62:

--[] Problem 63:

--[] Problem 64:

--[] Problem 65:

--[] Problem 66:

--[] Problem 67:

--[] Problem 68:

--[] Problem 69:

--[] Problem 70:

--[] Problem 71:

--[] Problem 72:

--[] Problem 73:

--[] Problem 74:

--[] Problem 75:

--[] Problem 76:

--[] Problem 77:

--[] Problem 78:

--[] Problem 79:

--[] Problem 80:

--[] Problem 81:

--[] Problem 82:

--[] Problem 83:

--[] Problem 84:

--[] Problem 85:

--[] Problem 86:

--[] Problem 87:

--[] Problem 88:

--[] Problem 89:

--[] Problem 90:

--[] Problem 91:

--[] Problem 92:

--[] Problem 93:

--[] Problem 94:

--[] Problem 95:

--[] Problem 96:

--[] Problem 97:

--[] Problem 98:

--[] Problem 99:
