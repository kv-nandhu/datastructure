void main() {
  List<int> number =[1,2,3,4,5,6,1,1,2,8,9,1,1,1];
  int t = 2;
  for(var i = 0;i<number.length;){
    for(var j = number.length-1;j>i;){
      if(number[j] == t){
        j--;
      }else if(number[i]==t){
        int temp = number[j];
        number[j]=number[i];
        number[i]=temp;
        i++;
      }else{
        i++;
      }
    }
    i++;
  }
  print(number);
}