# array.awk
BEGIN {
    arr[1] = 1
    arr[2] = 2
    arr[3] = 3
    arr[4] = 4
    arr[5] = 5
    printf "Array elements are: "
    for (i = 1; i <= 5; i++) {
        printf "%d ", arr[i]
    }
    printf "\n"
}
