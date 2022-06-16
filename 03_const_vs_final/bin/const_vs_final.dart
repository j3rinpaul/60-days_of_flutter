void main() {
  final String name; //runtime and compile time  ie value neednot be added at declaration but at runtime
  name = "Hello"; //final once declared cannot be reassigned for common datatypes
  print(name);

// name = "mee"; // error: reassignment to final variable is not possible just like const

//final is generally used in case of dynamic sessions ie if we want to assign a const which is to be given by the user or database
//once assigned cannot be changed
//initalize at the time of declaration not needed
  final List<int> list = [];
  list.add(30); //incase of list we can add elements or delete it but cannot reassign it
  list.add(40);
  print(list);// list = [4, 6, 23]; //reassigned list

//list = [2,1,2,54] is not possible

  const String name1 = "Hello"; //constant value cannot be reassigned
  //incase of const the value is to be assigned at the time of declaration no runtime value assignment
  //const is for value which remains const from the coding time itself
}
