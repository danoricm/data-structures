-- array.e
include std/io.e

integer arr[5] = {1, 2, 3, 4, 5}

puts(1, "Array elements are: ")
for i = 1 to 5 do
    printf(1, "%d ", arr[i])
end for
puts(1, "\n")
