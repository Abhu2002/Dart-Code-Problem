
//Problem 3
import "dart:io";

class Employee{
  String? name;
  int? age;
  String? mobile;
  String? city;
  int? salary;

  Employee (this.name,this.age,this.mobile,this.city,this.salary);// one line constructor
}


void main (){
   
   Employee e1 = Employee("Abhay Kapadnis", 21, "8355835381", "Mumbai", 30000);
   Employee e2 = Employee("Omkar Patil", 26,"9821626144","Pune",21000);
   Map <int,Employee> dept ={ 15057: e1,15064: e2};
    
  for(MapEntry dept in dept.entries){
      if (dept.value.age>25 && ((25000>dept.value.salary) && (dept.value.salary>10000) )){
          print("The Employee with age greater than 25  and Salary between 10k and 25k is ${dept.value.name}");
        }

}
}