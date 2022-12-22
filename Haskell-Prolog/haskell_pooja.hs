--1. Write a program that finds the maximum of a simple list of numbers.
maxfun l h
      | null l = h
      | (>) (head l) h = maxfun (tail l) (head l)
      | otherwise = maxfun (tail l) h

maxoflist l
      | null l = []
      | otherwise = [maxfun l (head l)]


--2. Write a program that succeeds if the intersection of two given list parameters is empty.
istatus lst1 lst2
   | lst1 == [] = "Success!!-intersection empty"
   | elem (head lst1) lst2 = "Intersection Found!"
   | otherwise =  istatus (tail lst1) lst2

filterNot f = filter (not . f)

intersect lst1 lst2
   | lst1 == [] = []
   | lst2 == [] = []
   | elem (head lst1) lst2 = (head lst1):intersect (tail lst1) (filterNot (==(head lst1)) lst2)
   | otherwise =  intersect (tail lst1) lst2


{-3. Write a program that returns a list containing the union of the elements of two given lists.
    Assume the list represents sets (i.e. unique elements) and the union returns unique elements.-}
import Data.List
unionoflists x y
       | null x = y
       | null y = x
       | elemIndex (head x) y /= Nothing = unionoflists (tail x) y
       | otherwise = sort(unionoflists (tail x) y ++ [(head x)])
       

--4. Write a program that returns the final element of a list
finalone :: [l] -> l
finalone [e] = e
finalone (_:es) = finalone es
finalone [] = error "Empty List!"
