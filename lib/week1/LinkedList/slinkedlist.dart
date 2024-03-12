// ignore_for_file: unnecessary_brace_in_string_interps, camel_case_types

class Node {
  int data;
  Node? next;

  Node({required this.data});
}

class singlyLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node? newNode = Node(data: data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

//----------delete----------//

  void delete(int data) {
    Node? temp = head;
    Node? prev;

    if (temp != null && temp.data == data) {
      head = temp.next;
    } else {
      while (temp != null && temp.data != data) {
        prev = temp;
        temp = temp.next;
      }
      if (temp == null) {
        print("target is not here");
        return;
      }
      if (temp == tail) {
        tail = prev;
        tail?.next = null;
        return;
      }
      prev!.next = temp.next;
    }
  }

  //----------search----------//

  void search(int target) {
    Node? current = head;
    int i = 1;
    current ?? print("node is empty");
    while (current != null) {
      if (current.data == target) {
        print('item found position ${i}');
      }
      i++;
      current = current.next;
    }
  }

//----------display----------//
  void display() {
    Node? temp = head;

    if (temp == null) {
      print('node is empty');
    } else {
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  //---------reverse--------//

  void reverse() {
    Node? current = head;
    Node? nextNode = head;
    Node? prev;
    while (current != null) {
      nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }
    head = prev;
  }

//--------------insert-before---------------//
  void insertbefore(int before, int data) {
    Node newnode = Node(data: data);
    Node? current = head;
    Node? prev;
    if (current?.data == before) {
      head = newnode;
      head?.next = current;
      // newnode.next = current;
      // head = newnode;
    } else {
      while (current != null && current.data != before) {
        prev = current;
        current = current.next;
      }
      if (current == null) {
        return;
      }
      prev!.next = newnode;
      newnode.next = current;
    }
  }

  //---------insert after---------//

  void insertafter(int after, int data) {
    Node? newnode = Node(data: data);
    Node? temp = head;
    while (temp != null && temp.data != after) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (tail == temp) {
      tail!.next = newnode;
      tail = newnode;
    }
    newnode.next = temp.next;
    temp.next = newnode;
  }

//--------add middle--------//

  void addmiddle(int data) {
    Node newnode = Node(data: data);
    Node? fast = head;
    Node? slow = head;
    Node? current;
    if (fast == null || fast.next == null) {
      print('cant found it');
    } else {
      while (fast != null && fast.next != null) {
        fast = fast.next!.next;
        current = slow;
        slow = slow!.next;
      }
      current!.next = newnode;
      newnode.next = slow;
    }
  }

//---------delete middle-------//

  void deleteMiddle() {
    Node? fast = head;
    Node? slow = head;
    Node? prev;
    if (head == null || head!.next == null) {
      print("List has only 0/1 node , Can't find a middle");
    } else {
      while (fast != null && fast.next != null) {
        fast = fast.next!.next;
        prev = slow;
        slow = slow?.next;
      }
      prev!.next = slow!.next;
    }
  }
  //-----remove duplicates------//

  void removeduplicates() {
    Node? current = head;
    while (current != null) {
      Node? nextNode = current;
      while (nextNode?.next != null) {
        if (current.data == nextNode?.next!.data) {
          nextNode?.next = nextNode.next!.next;
        } else {
          nextNode = nextNode!.next;
        }
      }
      current = current.next;
    }
  }
}

void main() {
  singlyLinkedList list = singlyLinkedList();

  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(20);
  list.addNode(50);
  // list.delete(50);
  // list.search(20);
  // list.reverse();
  list.insertbefore(10, 25);
  // list.insertafter(20, 40);
  // list.addmiddle(25);
  // list.deleteMiddle();
  // list.removeduplicates();
  list.display();
}
