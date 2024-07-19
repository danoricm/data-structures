// linked_list.dart
class Node {
  int data;
  Node next;

  Node(this.data);
}

class LinkedList {
  Node head;

  void append(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node current = head;
      while (current.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void printList() {
    Node current = head;
    while (current != null) {
      print('${current.data} ');
      current = current.next;
    }
  }
}

void main() {
  LinkedList llist = LinkedList();
  llist.append(1);
  llist.append(2);
  llist.append(3);
  llist.append(4);
  llist.printList();
}
