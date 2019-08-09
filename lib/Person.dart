class Person{
  String myName;
  String _hi; // If '_' is placed before any variable it becomes private to the library

  Person(String myName){
    this.myName=myName;
  }


  String get hi => _hi;  //A way of implementing getter function in dart

  set hi(String value) {
    _hi = value;
  }

  void printName(){
    print(this.myName);
  }
}