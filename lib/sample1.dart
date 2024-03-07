class Node{
  String data;
  Node? next;

  Node({required this.data});
}

class Stack {
  Node? top;

  void push(String data) {
    Node? newNode = Node(data: data);
    if(top==null) {
      top = newNode;
    }else{
      newNode.next = top;
      top = newNode;
    }
  } 

  void pop() {
    top = top!.next;
  }
  void display() {
    Node? temp = top;
    if(temp==null) {
      print("stack is empty");
    }else{
      while(temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
  Node? reverseStack(Node? top1, Node? top2) {
    Node? temp = top1;
    while(temp != null) {
      Node? newNode = Node(data: temp.data);
      if(top2 == null) {
        top2=newNode;
      }else{
        newNode.next = top2;
        top2 = newNode;
      }
      temp = temp.next;
    }
    return top2;
  }
}

void main() {
  Stack stack =Stack();
  stack.push("a");
  stack.push("b");
  stack.push("c");
  stack.push("d");
  stack.push("e");
  stack.display();

  print("  ");

  Stack stack1 = Stack();
  stack1.top = stack1.reverseStack(stack.top, stack1.top);
  stack1.display();
}