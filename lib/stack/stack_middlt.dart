class TwoStacks {
  List<String> beforeMiddle = [];
  List<String> afterMiddle = [];

  void push(String data) {
    beforeMiddle.add(data);
  }

  void deleteMiddle() {
    if (beforeMiddle.isEmpty) {
      print('Stack is empty. Cannot delete middle.');
      return;
    }

    int middleIndex = (beforeMiddle.length - 1) ~/ 2;

    for (int i = 0; i < middleIndex; i++) {
      afterMiddle.add(beforeMiddle.removeLast());
    }

    beforeMiddle.removeLast();

    while (afterMiddle.isNotEmpty) {
      beforeMiddle.add(afterMiddle.removeLast());
    }
  }

  void printStack() {
    for (var element in beforeMiddle) {
      print(element);
    }
  }
}
void main() {

  TwoStacks stack = TwoStacks();

  stack.push('Item 1');
  stack.push('Item 2');
  stack.push('Item 3');
  stack.push('Item 4');
  stack.push('Item 5');

  print('Initial Stack:');
  stack.printStack();

  stack.deleteMiddle();

  print('\nStack after deleting the middle element:');
  stack.printStack();
}