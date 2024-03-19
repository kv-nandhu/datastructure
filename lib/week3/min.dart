// ignore_for_file: file_names

class MinHeap { // class definitoin
  List<int> heap = [];

  MinHeap(List<int> list) { //Constructor
    buildHeap(list);
  }

  void buildHeap(List<int> list) { //buildHeap Method
    heap = list;
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int currentIndex) { //shiftDown Method
    int endIndex = heap.length - 1;
    int leftIndex = leftChild(currentIndex);

    while (leftIndex <= endIndex) {
      int rightIndex = rightChild(currentIndex);
      int indexToShift;

      if (rightIndex <= endIndex && heap[rightIndex] < heap[leftIndex]) {
        indexToShift = rightIndex;
      } else {
        indexToShift = leftIndex;
      }
      if (heap[currentIndex] > heap[indexToShift]) {
        swap(heap, currentIndex, indexToShift);
        currentIndex = indexToShift;
        leftIndex = leftChild(currentIndex);
      } else {
        return;
      }
    }
  }

  void shiftUp(int currentIndex) { //shiftUp Method
    int parentIndex = parent(currentIndex);
    while (currentIndex > 0 && heap[parentIndex] > heap[currentIndex]) {
      swap(heap, currentIndex, parentIndex);
      currentIndex = parentIndex;
      parentIndex = parent(currentIndex);
    }
  }
//The peek method returns the minimum element in the heap
  int peek() { 
    return heap[0];
  }

  void insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  void remove() {
    swap(heap, 0, heap.length - 1);
    heap.removeLast();
    shiftDown(0);
  }
//The swap method swaps two elements in the heap.
  void swap(List<int> list, int i, int j) { 
    int temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }

  void display() {
    print(heap);
  }

/*
Helper Methods:
parent, leftChild, and rightChild methods are helper methods to calculate the indices of the parent, left child, 
and right child nodes of a given node, respectively.
 */

  int parent(int i) {
    return (i - 1) ~/ 2;
  }

  int leftChild(int i) {
    return 2 * i + 1;
  }

  int rightChild(int i) {
    return 2 * i + 2;
  }
}

void main() {
  List<int> list = [6, 2, 8];
  MinHeap out = MinHeap(list);
  out.insert(1);
  out.insert(5);
  out.insert(15);
  out.remove();
  out.display();
}
