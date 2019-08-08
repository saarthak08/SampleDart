import 'package:SampleDart/SampleDart.dart' as SampleDart;

void main(List<String> arguments) {
  print('Hello world: ${SampleDart.calculate()}!');

  var myString=myName();
  print('Welcome \n${myString}\nLength:${myString.length}');  //${myString} is String Interpolation
}


String myName(){
  return 'Hey! I am Saarthak';
}