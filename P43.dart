//Problem 1
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

  Map <int,int> count = {};// map for count of each element

  int n = list1.length;
  for (int i =0; i<n;  i++){
      if (count.containsKey(list1[i])){
        count[list1[i]] = count[list1[i]]! + 1;

      }
      else{
        count[list1[i]] = 1;
      }
  }
  print(count);
  print("The unique element in the array are ${count.length}");

  for (MapEntry count in count.entries){
    if(count.value>1){
      stdout.write("Repeated element List of ${count.key} is ");
      var list=List<int>.filled(count.value,count.key);
      print(list);
    }
  }

}