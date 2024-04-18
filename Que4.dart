import 'dart:io';
void main(){
  var array1 = {[1,2,3],
  [4,5,6],
  [7,8,9]};
 var array2 = {[3,2,1],
  [6,5,4],
  [9,8,7]};
  List myArray1 = array1.toList();
  List myArray2 = array2.toList();
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
  List sumList = myArray2+myArray1;
  sumList.forEach((element) {
    stdout.write("$element");
    print("");
  });
}