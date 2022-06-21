abstract class Animals {
  //abstract is only used in case where we need to only extend the class not to create an object using it
  //base class
  void sayHello() {
    print("Hello");
  }
}

class Human extends Animals { //animal can be used to extend and the subclass recieves all the properties
  //extends keyword is used for inheriatance
  void sayName() {
    //sub class
    print("Inherited");
  }

  @override //overriding the  base class
  void sayHello() {
    print("Hi Human"); //created a new function
    super
        .sayHello(); //by super keyword the sayHello function from superclass(base) is called and prints Hello from animal class
  }
}

abstract class Animal {
  //the base class if fun def is not given can act as an interface
  void sayHello(); //interface is created
  //refer 100k coding inheritance and property by crossroads
}

class Human1 implements Animal {
  @override  //if override is removed this function will be entirely of human class,override keyword make this fuction inheriated
  void sayHello() {
    //function inherited from animal using interface
    print("Hello interface");
  }

  void sayName() {
    //function which is available only for human class
    print("Name"); //not inheriated or interfaced
  }
}


mixin Animal1 {  //mixin is used for multiple inheritance
  int age = 29;
  void sayHello() {
    print("Hello Mixin");  //multiple inheritance is applicable for interface
  }
}

mixin Animal2 {
  int age = 39;
  void sayHello() {
    print(age);
  }
}

class Human2 with Animal1,Animal2{ //for mixin with keyword for multiple inheritance

}

void main() {
  final human = Human1();
  // final animal = Animals(); //here we are trying to call an abstract class which shows an error
  human.sayHello(); //inheriated property from animals
  human.sayName(); //both functions are available for human class
}
