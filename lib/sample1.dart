// class Node {
//   String data;
//   Node? next;

//   Node({required this.data});
// }

// class stack {
// Node? top;

// void push(String data) {
//   Node? newNode = Node(data: data);
//   newNode.next = top;
//   top = newNode;
// }
//   String pop() {
//     if (isEmpty()) {
//       print("stack is empty");
//     }
//     String data = top!.data;
//     top = top!.next;
//     return data;
//   }
// }