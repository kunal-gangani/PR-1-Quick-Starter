import 'dart:io';
void main(){
  var array = [];
  List myArray = array.toList();
  stdout.write("How many elements do you want in your Array : ");
  int len = int.parse(stdin.readLineSync()!);
  for(int i = 1 ; i <= len ; i++){
    stdout.write("Enter Element $i : ");
    int el = int.parse(stdin.readLineSync()!);
    myArray.add(el);
  }
  print("Elements in the Array are : ");
  myArray.forEach((element) {
      stdout.write("$element   ");
  });
  print("");
  print("Negative Elements in the Array are : ");
  myArray.forEach((element) {
    if(element<0){
      stdout.write("$element   ");
    }
  });
}