% array.t
var arr : array 1 .. 5 of int := init (1, 2, 3, 4, 5)
put "Array elements are: " ..
for i : 1 .. 5
    put arr(i), " " ..
end for
put ""
