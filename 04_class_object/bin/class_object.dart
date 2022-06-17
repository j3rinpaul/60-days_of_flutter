// class Person {
//   // String name = "name";
//   // int age = 23;   //first method to create a class
//   String? name;  //null safety
//   int? age;
// }

//object oreinted programming is same as that of java
import 'private.dart';

class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    this.name = name; //this constructor is used same as java
    this.age = age; // another method for creating a class
  }
}

class Person2 {
  final String name;
  final int age;

  Person2(this.name, this.age); //arguement passed directly into constructor

  Person2.ageabove30(this.name, this.age) { //named constructor
    print(name); //public
  }

  void sayHi() {
    //private (_underscore is used to declare private members)
    print("Hi all");
  }
}

void main() {
  final person = Person("hello", 20); //assign a class to a variable
  final person2 = Private("Hello", 33);
  final old = Person2.ageabove30("hello",43); //in result two names are printed because while declaration we assigned a print and below too
  
  
  print(old.name); //that is why it is printed two times
  
  old.sayHi(); //instead of using the class name "Person" we called object old ie because
  
  print(person2.getAge());
  print(person2.age);
  
  person2.setAge = 38; //reassigning the age
 
  print(person2.age); //age is reassigned
  print(person2.getName()); //calling function to access the name from private class
}
