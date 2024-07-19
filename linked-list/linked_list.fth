\ linked_list.fth
create arr 1 , 2 , 3 , 4 , 5 ,
: print-array
    ." Array elements are: " 
    arr 5 cells + arr
    do
        i @ . 
    loop ;
print-array
