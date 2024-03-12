void main(List<String> args) {
  Stack stack=Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.push(50);
  // stack.display();
  Stack stack1=Stack();
  stack1.top=stack1.reverseStack(stack.top, stack1.top);
  stack1.display();
}
class Node{
  int data;
  Node? next;
  Node({required this.data});
}
class Stack{
  Node? top;
  void push(int data){
    var newNode=Node(data: data);
    if(top==null){
      top=newNode;
      return;
    }else{
      newNode.next=top;
      top=newNode;
    }
  }
  void pop(){
    top=top!.next;
  }
  display(){
    var temp=top;
    while (temp!=null) {
      print(temp.data);
      temp=temp.next;
    }
  }
   Node? reverseStack(Node? top1,Node? top2){
    var temp=top1;
  while (temp!=null) {
     var newNode=Node(data: temp.data);
     if(top2==null){
      top2=newNode;
      }else{
      newNode.next=top2;
      top2=newNode;
      }
      temp=temp.next;
     }
     return top2;
  }
}