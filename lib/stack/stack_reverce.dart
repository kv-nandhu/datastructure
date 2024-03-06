class Node {
  String data;
  Node? next;

  Node({required this.data});
}

class Stack {
  Node? top;

  void push(String data) {
    Node? newNode = Node(data:data);
    newNode.next = top;
    top = newNode;
  }

  String pop() {
    if (isEmpty()) {
      print("stack is empty");
    }
    String data = top!.data;
    top = top!.next;
    return data;
  }

  bool isEmpty() {
    return top == null;
  }
}

String reverseStringWithStack(String input) {
  Stack stack = Stack();
  String reversedString = '';

  for (int i = 0; i < input.length; i++) {
    stack.push(input[i]);
  }

  while (!stack.isEmpty()) {
    reversedString += stack.pop();
  }

  return reversedString;
}

void main() {
  String input = 'Nandhu';
  print('Original string: $input');
  
  String reversed = reverseStringWithStack(input);
  print('Reversed string: $reversed');
}
