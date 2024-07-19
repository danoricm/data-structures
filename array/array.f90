! array.f90
program ArrayExample
    implicit none
    integer :: arr(5) = [1, 2, 3, 4, 5]
    integer :: i

    print *, "Array elements are: "
    do i = 1, 5
        print *, arr(i)
    end do
end program ArrayExample
