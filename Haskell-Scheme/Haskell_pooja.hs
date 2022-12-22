tuplist :: [Int]->[Int]->[(Int,Int)]
tuplist [] ab = []
tuplist (p:q) ab=(elelist p ab) ++ tuplist q ab

elelist :: Int->[Int]->[(Int,Int)]
elelist x (y:ys)=(x,y): elelist x ys
elelist _ _=[]
