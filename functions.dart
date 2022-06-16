import 'dart:io';

void main() {
//syntax is same as "C"

// syntax:
// return_type function_name (params){
//  functions body...
//  }

  sum();
  sum1(3, 5);
  print(sum3(
    a: 3004,
    b: 45565,
  )); //required parameters
  print(sum4(a: 4, b: 6, ce: 5344)); //optional parameters
  sum5(
      first: 45,
      second: 20,
      third: 432); //optional parameters with null checker
  sum6(
      first: 30,
      second: 40,
      third: 10); //optional parameters with optional value changed

  // sunFun(29, 1, sum1); //passing function as arguement

  // sunFun(10, 20, (int f, int s) {
  //   print("Sum: ${f + s}"); //anonymous function
  // }); //instead of passing fun in arguement section another fun is defined

  sum45(45, 55);
  print("out of the future");
}

void sum() {
  print(2 + 3); //function overloading is not available in dart
}

//functions same as of C
void sum1(int a, int b) {
  print("sum: ${a + b}");
}

//==========================================================================
//Named Parameters
//in this a and b cannot be null so to ensure that it is marked as required
int sum3({required int a, required int b}) {
  //required parameters
  return a + b;
}

int sum4({required int a, required int b, int? ce}) {
  // ? is that the value 'ce' can either be a number or null value so incase of null the program
  //doesn't throw an error for that purpose
  //required parameters               //var can also be used instead of int in case of ce
  return a + b;
}

void sum5({required int first, required int second, int? third}) {
  //Optional Parameters
  //third is an optional parameter
  if (third == null) {
    //basic null checker
    third = 0;
  }
  print(first + second + third);
}

void sum6({required int first, required int second, int third = 0}) {
  //Default Parameters
  //value can be changed while function call
  //to avoid an if statement that's been implemented
  print(first + second + third);
}

//Passing functions as an arguement

void sunFun(int a, int b, void Function(int, int) customSum) {
  customSum(a, b);
}

//for passing a function as an arguement
//syntax :
//   return_type function_name(params, return_type2 Function(params2) function_name2){
//  function_name2(params);
// function body
// }

//return_type2 is same as the passing function arguement
//Function keyword
//with params2 as the same parameters of the passed arguement function
//funtion_name2 as custom name to call the passed function inside the declared function
// the function is declared and passed into the function (custom function)
//=============================================================================

//Future functions

Future<void> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 3)); //delay time
  print("Sum in future: ${a + b}"); //function body
} 
//Future<datatype> function_name(params) async{
//await Future.delayed(
//  Duration(seconds: Time));
//function body
//}
//future and async are keywords that should be used along with future functions
//used for tasks in which their is delay
// that is for web requests or some other functions which require more time
// eg: threading,database etc...

Future<void> sum45(int a, int b) async { //async is always followed by await
  await sumFuture(a,b); //await says the function to wait for the previous function to finish excuting and continue after that
  print("after sum");//ie the sum45 is executed after the sumFuture is executed
}
