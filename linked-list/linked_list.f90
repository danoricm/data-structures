! linked_list.f90
program LinkedListExample
    implicit none
    type :: Node
        integer :: data
        type(Node), pointer :: next
    end type Node

    type(Node), pointer :: head => null()
    type(Node), pointer :: new_node, current

    call append(1)
    call append(2)
    call append(3)
    call append(4)
    call print_list()

contains

    subroutine append(data)
        integer, intent(in) :: data
        allocate(new_node)
        new_node%data = data
        new_node%next => null()
        if (.not. associated(head)) then
            head => new_node
        else
            current => head
            do while (associated(current%next))
                current => current%next
            end do
            current%next => new_node
        end if
    end subroutine append

    subroutine print_list()
        current => head
        do while (associated(current))
            print *, current%data
            current => current%next
        end do
    end subroutine print_list

end program LinkedListExample
