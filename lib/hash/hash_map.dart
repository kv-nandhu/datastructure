import 'dart:collection';

void main(){
  HashMap<String,int> studentAges = HashMap<String,int>();


  studentAges['a'] = 25;
  studentAges['b'] = 26;
  studentAges['c'] = 27;
  studentAges['d'] = 28;


   print('age of a is ${studentAges['a']}');

   studentAges['a'] = 26;

  studentAges.forEach((key, value) {
    print('$key : $value');
  }
  );

}