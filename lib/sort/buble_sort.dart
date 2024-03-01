void main() {
  List<int> arr = [1, 5, 8, 4, 5, 7, 9, 6, 3, 1, 2];

  for(int i = 0;i<arr.length-1;i++){
  for(int j = 0;j<arr.length-1-i;j++){
        if(arr[j]>arr[j+1]){
          int temp = arr[j];
          arr[j] = arr[j+1];
          arr[j+1] = temp;
        }
     }
  }
  print(arr);
}