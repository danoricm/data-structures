// linked_list.js
class Node {
    constructor(data) {
        this.data = data;
        this.next = null;
    }
}

class LinkedList {
    constructor() {
        this.head = null;
    }

    append(data) {
        const newNode = new Node(data);
        if (this.head === null) {
            this.head = newNode;
            return;
        }
        let current = this.head;
        while (current.next !== null) {
            current = current.next;
        }
        current.next = newNode;
    }

    printList() {
        let current = this.head;
        while (current !== null) {
            process.stdout.write(`${current.data} `);
            current = current.next;
        }
        console.log();
    }
}

const llist = new LinkedList();
llist.append(1);
llist.append(2);
llist.append(3);
llist.append(4);
llist.printList();
