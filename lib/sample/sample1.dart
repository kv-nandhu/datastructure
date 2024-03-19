import 'dart:io';

class minHeap {
  List<int> heap =[];

  minHeap(List<int>  list) {
    buildHeap(list);
  }

  void buildHeap(List<int> list) {
    heap = list;
    for(int i = parent(heap.length-1); i>=0;i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int currentIndex) {
    int endIndex = heap.length-1;
    int leftIndex = leftChild(currentIndex);

    while(leftIndex<=exitCode){
      int rightIndex = rightChild(currentIndex);
      int indexToShift;

      if(rightIndex <= endIndex && heap[rightIndex] < heap[leftIndex]) {
        
      }
    }
  }

  void shiftUp() {

  }
  int peek() {

  }
  void insert(){

  }
  void remove() {

  }
  void swap() {

  }
  void display(){
    print(heap);
  }
  int parent(int i){
return (i-1) ~/2;
  }
  int leftChild(int i){
    return 2*i+1;
  }

  int rightChild(int i) {
    return 2*i+2;
  }
  
}