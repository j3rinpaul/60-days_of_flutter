import 'dart:io';

void main() {
  //=====================================================
  //    IO
  print("Hello world");
  var a = stdin.readLineSync();
  stdout.write("Hello $a \n");
  print("Hello $a");
  //=====================================================
  //Basic Operations
  print("Enter 2 numbers: ");
  var inp1 = stdin.readLineSync(); //input format
  var inp2 = stdin.readLineSync();

  var num1 = int.parse(inp1!); //to change the string format to integer format
  // '!' is added inorder that the input is never gonna be null
  var num2 = int.parse(inp2!);

  print("Sum: ${num1 + num2}");
  // $ is added to execute a set of operations
// ================================================================
  //DATA TYPES

  int num1 = 10; //stores value as 10 normal integer
  double num2 = 39; //stores as a double value 39.0

  num num3 = 20; //can be used to store as double and int

  String name = "hello "; //to include special characters
  String name1 = 'Hi im das'; //to write a normal string
  String address = ''' House Name
                       Ward Number
                       State'''; //multiline string such as address

  // print(name.length); //prints out the length of the string {white spaces are also included}

  // ===========================================================================
  //if-else

  // int num = 10;
  if (num > 0) {
    print("Positive");
  } else if (num == 0) {
    print("zero");
  } else {
    print("Negative");
  }

  //=============================================================================
  // Loops

  for (var i = 0; i < 200; i++) {
    print(i);
  }

  //============================================================================
  // List and arrays

  var array = [2, 3, 4, 656, 65756];
  var arr3 = [2, 534, 5345, 23267, 856]; //declaration methods
  List<String> strarray = ["hello", "jhdsfjkg"];
  // List<datatype> name = [elements of a array];

  // // Operations

  // print(array.length);
  // if (array.contains(4)) {
  //   print("Has 4");
  // }

  // array.add(544); //appends the value
  // array.removeAt(2); //remove value from index
  // array.addAll(arr3);
  // print(array);
  // print(array.join('*'));

//Multidimensional
//
  List<List<int>> num3 = [
    [1, 3, 4],
    [2, 35, 6]
  ];
//
// print(num3[1][2]);

//===========================================================================
  List<int> list = [2, 2, 2, 2, 2, 4, 5453, 45, 45, 45, 45, 686, 978, 90890];
  Set<int> set = {2, 2, 2, 2, 2, 4, 5453, 45, 45, 45, 45, 686, 978, 90890};
// //set doesn't allow repeated values
//   print(num1);
//   print(num2);
//=============================================================================
  //Map  - Dictionaries

  var map1 = {"Name": "hello", "age": 17}; //unique keys
  //Map <key_datatype, value_datatype> map_name{
  //"key":"value"
  //}
  Map<String, String> map2 = {
    "Name": "hello",
    "Age": "20"
  }; //declaration methods
  print(map1['Name']);
  //map_name["element_key"]
}
