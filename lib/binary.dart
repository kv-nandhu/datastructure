int binarysearch(List<int> list,int target) {
  int low = 0;
  int high = list.length - 1;
   while(low<high) {
    int mid = (low+high) ~/2;
    int midValue = list[mid];
    if(midValue == target) {
      return mid;
    }else if(target>midValue) {
      low = mid +1;
    }else{
      high = mid - 1;
    }
   }
   return -1;
}
void main() {
  List<int> sortedList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int target = 7;
  int result = binarysearch(sortedList, target);

  if(result != -1){
    print(result);
  }else{
    print("target not found");
  }
}