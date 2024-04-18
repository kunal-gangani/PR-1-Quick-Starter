import 'dart:io';
void main(){
    var array = [1,2,3,4];
    List myArray = array.toList();
    print("Welcome to the Menu-Driven Program of Array Operations ");
    print("Enter 1 to Enter an element in the Array  ");
    print("Enter 2 to Update an element in the Array  ");
    print("Enter 3 to Remove an element in the Array  ");
    print("Enter 4 to View the elements in the Array  ");
    stdout.write("Enter Your Choice : ");
    int choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1:
        stdout.write("Enter the Element you want to add in your Array : ");
        int addVar = int.parse(stdin.readLineSync()!);
        myArray.add(addVar);
        print(myArray);
        break;
      case 2:
        stdout.write("Enter the Element Index where you want to Update : ");
        int index = int.parse(stdin.readLineSync()!);
        print("");
        stdout.write("Enter the Element you want : ");
        int newEle = int.parse(stdin.readLineSync()!);
        myArray[index] = newEle;
        print(myArray);
        break;
      case 3:
        stdout.write("Enter the Element you want to Remove : ");
        int removeVar = int.parse(stdin.readLineSync()!);
        myArray.remove(removeVar);
        print(myArray);
        break;
      case 4:
        stdout.write("You are Viewing the List : ");
        myArray.forEach((element) {
          stdout.write("$element  ");
        });
        break;
      default:
        print("Invalid Choice!!");
    }
}