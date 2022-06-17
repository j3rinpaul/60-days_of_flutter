class Private {
  //private class is declared by adding an underscore in front of the variable name
  final String _name; //private class declared in another class cannot be accessed to the main dart file
  int _age; //class declared in the same file can be accessed without any change

  Private(this._name,this._age); //constructor
   //inorder to access the private class declared we must declare another function to access it

  //class methods
  int getAge() {
    //function declared to access age from private class
    return _age;
  }

//private members are accessed  by other files using 'get' keyword
  int get age {
    return _age;
  }

  set setAge(value) { //to reassign a variable declared set keyword is used
    _age = value;
  }

  String getName() {
    return _name;
  }
}
