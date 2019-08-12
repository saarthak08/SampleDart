import 'package:SampleDart/Person.dart';
import 'package:SampleDart/SampleDart.dart' as SampleDart;
import 'package:SampleDart/Slot.dart';
import 'package:SampleDart/circle.dart';
import 'package:SampleDart/square.dart';

void main(List<String> arguments) {
  print('Hello world: ${SampleDart.calculate()}!');

  var myString=myName();
  print('Welcome \n${myString}\nLength:${myString.length}');  //${myString} is String Interpolation
  var person=Person(myName());
  //person.myName=myName();
  print('Inside the class: ');
  person.printName();
  var circleSlot=Slot<circle>();
  circleSlot.insert(circle());
}


String myName(){
  return 'Saarthak';
}