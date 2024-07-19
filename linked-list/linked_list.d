// linked_list.d
import std.stdio;

class Node {
    int data;
    Node* next;
    this(int data) {
        this.data = data;
        this.next = null;
    }
}

class LinkedList {
    Node* head = null;

    void append(int data) {
        Node* newNode = new Node(data);
        if (head is null) {
            head = newNode;
            return;
        }
        Node* current = head;
        while (current.next !is null) {
            current = current.next;
        }
        current.next = newNode;
    }

    void printList() {
        Node* current = head;
        while (current !is null) {
            writef("%d ", current.data);
            current = current.next;
        }
        writeln();
    }
}

void main() {
    auto llist = new LinkedList();
    llist.append(1);
    llist.append(2);
    llist.append(3);
    llist.append(4);
    llist.printList();
}
