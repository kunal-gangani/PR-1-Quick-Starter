import 'dart:io';

void main() {
  List<int> myArray = [];
  stdout.write("How many elements do you want in your Array : ");
  int len = int.parse(stdin.readLineSync()!);
  myArray = List.generate(len, (i) {
    stdout.write("Enter the value for Element ${i+1} : ");
    int el = int.parse(stdin.readLineSync()!);
    myArray.insert(i, el); 
    return el;
  });
  print("Elements in the Array are : ");
  myArray.forEach((element) {
    stdout.write("$element   ");
  });
  print("");
  print("Negative Elements in the Array are : ");
  myArray.forEach((element) {
    if (element < 0) {
      stdout.write("$element   ");
    }
  });
}
