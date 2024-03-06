class Node {
  int data;
  Node? next;

  Node({required this.data});
}

class Stack {
  Node? top;
  int _length = 0;

  int get length => _length;

  void push(int data) {
    Node? newNode = Node(data:data);
 if(top == null){
      top = newNode;
    }
    else{
      newNode.next = top;
      top = newNode;
    }
    _length++;
  }

  int pop() {
    if (isEmpty()) {
      print('stack underflow');
    }
    int data = top!.data;
    top = top!.next;
    _length--;
    return data;
  }

  int peek() {
    if (isEmpty()) {
      print('stack is empty');
    }
    return top!.data;
  }

  bool isEmpty() {
    return top == null;
  }
}

class TwoStacks {
  Stack beforeMiddleStack = Stack();
  Stack afterMiddleStack = Stack();

  void push(int data) {
    beforeMiddleStack.push(data);
  }

  void deleteMiddle() {
    if (beforeMiddleStack.isEmpty()) {
      print('Stack is empty. Cannot delete middle.');
      return;
    }

    int middleIndex = (beforeMiddleStack.length - 1) ~/ 2;
    int currentIndex = 0;

    while (currentIndex < middleIndex) {
      afterMiddleStack.push(beforeMiddleStack.pop());
      currentIndex++;
    }

    // Skip the middle element
    beforeMiddleStack.pop();

    // Restore elements to beforeMiddleStack
    while (!afterMiddleStack.isEmpty()) {
      beforeMiddleStack.push(afterMiddleStack.pop());
    }
  }

  void printStack() {
    Stack tempStack = Stack();

    // Reverse elements and print
    while (!beforeMiddleStack.isEmpty()) {
      int data = beforeMiddleStack.pop();
      tempStack.push(data);
      print(data);
    }

    // Restore elements to beforeMiddleStack
    while (!tempStack.isEmpty()) {
      beforeMiddleStack.push(tempStack.pop());
    }
  }
}

void main() {
  TwoStacks stack = TwoStacks();

  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);

  print('Initial Stack:');
  stack.printStack();

  stack.deleteMiddle();

  print('\nStack after deleting the middle element:');
  stack.printStack();
}
