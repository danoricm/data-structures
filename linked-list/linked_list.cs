// linked_list.cs
using System;

class Node {
    public int data;
    public Node next;
    public Node(int data) {
        this.data = data;
        this.next = null;
    }
}

class LinkedList {
    private Node head;

    public void Append(int data) {
        Node newNode = new Node(data);
        if (head == null) {
            head = newNode;
            return;
        }
        Node current = head;
        while (current.next != null) {
            current = current.next;
        }
        current.next = newNode;
    }

    public void PrintList() {
        Node current = head;
        while (current != null) {
            Console.Write(current.data + " ");
            current = current.next;
        }
        Console.WriteLine();
    }
}

class Program {
    static void Main() {
        LinkedList llist = new LinkedList();
        llist.Append(1);
        llist.Append(2);
        llist.Append(3);
        llist.Append(4);
        llist.PrintList();
    }
}
