import 'dart:io';
void main() {
  while (true) {
    var array1 = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ];
    List<List<int>> myArray = array1.map((e) => e.toList()).toList();
    print("Array : ");
    myArray.forEach((element) {
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
    stdout.write("Enter your Choice : ");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        int sum = 0;
        for (int i = 0; i < myArray.length; i++) {
          for (int j = 0; j < myArray[i].length; j++) {
            sum += myArray[i][j];
          }
        }
        print("The SUM of all the elements in the Array are : $sum");
        break;
      case 2:
        print("The SUM of the ROW from the Array is : ");
        stdout.write("Enter the row number : ");
        int rowNum = int.parse(stdin.readLineSync()!);
        if (rowNum > myArray.length) {
          print("Invalid row number");
          break;
        }
        int rowSum = 0;
        for (int j = 0; j < myArray[rowNum - 1].length; j++) {
          rowSum += myArray[rowNum - 1][j];
        }
        print("The sum of row $rowNum is : $rowSum");
        break;
      case 3:
        print("The SUM of the COLUMN from the Array is : ");
        stdout.write("Enter the column number : ");
        int colNum = int.parse(stdin.readLineSync()!);
        if (colNum > myArray[0].length) {
          print("Invalid column number");
          break;
        }
        int colSum = 0;
        for (int i = 0; i < myArray.length; i++) {
          colSum += myArray[i][colNum - 1];
        }
        print("The sum of column $colNum is : $colSum");
        break;
      case 4:
        int diagSum = 0;
        for (int i = 0; i < myArray.length; i++) {
          diagSum += myArray[i][i];
        }
        print("The SUM of all the DIAGONAL elements in the Array is : $diagSum");
        break;
      case 5:
        int antiDiagSum = 0;
        for (int i = 0; i < myArray.length; i++) {
          antiDiagSum += myArray[i][myArray[i].length - 1 - i];
        }
        print("The Sum of all the ANTI-DIAGONAL elements in the Array is : $antiDiagSum");
        break;
      case 6:
        print("Exiting the MENU-DRIVEN CODE..");
        return;
      default:
        print("Invalid Choice Input!!");
    }
  }
}
