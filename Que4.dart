import 'dart:io';
void main(){
  List<List<int>> myArray1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
    List<List<int>> myArray2 = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1],
  ];
  print("Array 1 : ");
  myArray1.forEach((element) {
    stdout.write("$element ");
    print("");
  });
  print("Array 2 :");
  myArray2.forEach((element) {
    stdout.write("$element ");
    print("");
  });
  print("Array 1 + Array 2 :");
  myArray1.forEach((element) {
    myArray2.forEach((e) {
      stdout.write("${element + e} ");
      print("");
     });
  });
  
}
