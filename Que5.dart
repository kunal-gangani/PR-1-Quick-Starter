import 'dart:io';
void main(){
  var array1 = {[1,2,3],
  [4,5,6],
  [7,8,9]};
  List myArray1 = array1.toList();
  print("  Array : ");
  myArray1.forEach((element) {
    stdout.write("$element ");
    print("");
  });
  print("Press 1 for SUM OF ALL ELEMENTS : ");
  print("Press 2 for SUM OF ANY SPECIFIC ROW : ");
  print("Press 3 for SUM OF ANY SPECIFIC COLUMN : ");
  print("Press 4 for SUM OF DIAGONAL ELEMENT : ");
  print("Press 5 for SUM OF ANTI-DIAGONAL ELEMENT : ");
  print("Press 6 for EXITING THE CODE : ");
  int choice;
  while(choice!=6){
    stdout.write("Enter your Choice : ");
    choice = int.parse(stdin.readLineSync()!);
    switch(choice){
    case 1:
      print("The SUM of all the elements in the Array are : ");
      break;
    case 2:
      print("The SUM of the _ROW from the Array is : ");
      break;
    case 3:
      print("The SUM of the _COLUMN from the Array is : ");
      break;
    case 4:
      print("The SUM of all the DIAGONAL elements in the Array is : ");
      break;
    case 5:
      print("The Sum of all the ANTI-DIAGONAL elements in the Array is : ");
      break;
    case 6:
      print("Exiting the MENU-DRIVEN CODE..");
      break;
    default:
      print("Invalid Choice Input!!");
  }
  }
}