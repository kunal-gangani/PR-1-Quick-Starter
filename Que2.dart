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
    int large = myArray[0];
    myArray.forEach((element) {
      if(element>large){
        large = element;
      }
    });
    print("The Largest Element in the Array is : $large");
}