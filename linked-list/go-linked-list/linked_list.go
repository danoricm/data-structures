package main

import "fmt"

type Node struct {
    data int
    next *Node
}

type LinkedList struct {
    head *Node
}

func (ll *LinkedList) append(data int) {
    newNode := &Node{data: data}
    if ll.head == nil {
        ll.head = newNode
    } else {
        current := ll.head
        for current.next != nil {
            current = current.next
        }
        current.next = newNode
    }
}

func (ll *LinkedList) printList() {
    current := ll.head
    for current != nil {
        fmt.Print(current.data, " ")
        current = current.next
    }
    fmt.Println()
}

func main() {
    llist := LinkedList{}
    llist.append(1)
    llist.append(2)
    llist.append(3)
    llist.append(4)
    llist.printList()
}
