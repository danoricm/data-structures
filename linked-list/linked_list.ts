// linked_list.ts
class ListNode {
    data: number;
    next: ListNode | null;

    constructor(data: number) {
        this.data = data;
        this.next = null;
    }
}

class MyLinkedList {
    head: ListNode | null;

    constructor() {
        this.head = null;
    }

    append(data: number): void {
        const newNode = new ListNode(data);
        if (this.head === null) {
            this.head = newNode;
            return;
        }
        let current: ListNode = this.head;
        while (current.next !== null) {
            current = current.next;
        }
        current.next = newNode;
    }

    printList(): void {
        let current: ListNode | null = this.head;
        const elements: number[] = [];
        while (current !== null) {
            elements.push(current.data);
            current = current.next;
        }
        console.log("Linked list elements are:", elements.join(' '));
    }
}

const myLinkedList = new MyLinkedList();
myLinkedList.append(1);
myLinkedList.append(2);
myLinkedList.append(3);
myLinkedList.append(4);
myLinkedList.printList();