
// problem 2
import "dart:io";
void main(){

  //var list1 = [1,2,2,2,3,4,5,5,6];// dynamic array
  var list1 = [];
  stdout.write("Do you want to enter element in array y/n:");
  String? op = stdin.readLineSync();

  while(op == "y"){
    stdout.write("Enter Element in the array:");
    int? num = int.parse(stdin.readLineSync()!);
    list1.add(num);
    stdout.write("Do you want to enter element in array y/n:");
     op = stdin.readLineSync();

  }
  list1.sort();

  int n =list1.length;

  int ans = 1;// smallest positive integer

  for (int i=0 ; i <n; i++){
    if(list1[i]>0){
    if(list1[i] == ans){
          ans = ans + 1; // if  '1' or other positive number is equal to ans ,increment ans 
    } 
    }
    
  }
   print("The Smallest positive missing number in list is ${ans}");
}