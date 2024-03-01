class Node {
  int data;
  Node? next;

  Node({required this.data});
}
class queue {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node? newNode = Node(data: data);

    if(front==null) {
      front=rear=newNode;
    }else {
      rear?.next = newNode;
      rear = newNode;
    }
  }
  void dequeue() {
    if(front==null) {
      print("queue is empty");
    }
    front=front?.next;
    if(front==null) {
      rear = null;
    }
  }
  void display() {
    Node? temp = front;
    if(temp==null) {
      print("queue is empty");
    }else{
      while(temp !=null) {
        print(temp.data);
        temp= temp.next;
      }
    }
  }
}
void main() {
  queue q = queue();
  q.enqueue(10);
  q.enqueue(15);
  q.enqueue(187);
  q.dequeue();
  q.display();
}