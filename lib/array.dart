void main() {
  List<int> number = [1,2,3,4,5,6,7];
  int t = 10;
  List<int> result = [];
  Set<int> news ={};
  for (int i = 0; i<number.length; i++) {
    int a = t - number[i];
    if(number.contains(a)){
      result.add(a);
      result.add(number[i]);
      print(result);
      break;
    }else{
      news.add(number[i]);
    }
  }
}