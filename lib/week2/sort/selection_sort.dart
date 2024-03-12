class selection{
  List<int> select(List<int> arr) {
    for(int i = 0; i<arr.length-1;i++) {
      int small = i;
      for(int j=i+1;j<arr.length;j++) {
        if(arr[small] > arr[j]) {
          small = j;
        }
      }
      int temp = arr[i];
      arr[i] = arr[small];
      arr[small] = temp;
    }
    return arr;
  }
}
void main() {
  List<int> arr = [4,7,8,5,6,9,12];
  selection s = selection();
  print(s.select(arr));
}