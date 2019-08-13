import 'dart:collection';

import 'package:SampleDart/Person.dart';
import 'package:SampleDart/SampleDart.dart' as SampleDart;
import 'package:SampleDart/Slot.dart';
import 'package:SampleDart/circle.dart';
import 'package:SampleDart/square.dart';
import 'dart:convert';

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
  var rawJSON='{"url": "http:blah.com", "id": 1}';
  var parsedJSON=json.decode(rawJSON);   //Parsed JSON is a hashmap
  //var imageModel=ImageModel(parsedJSON['url'],parsedJSON['id']);
  var imageModel=ImageModel.fromJSON(parsedJSON);
  print(imageModel);
  print('The URL: '+imageModel.url);
}


class ImageModel{
  String url;
  int id;

  ImageModel(this.url,this.id);

  ImageModel.fromJSON(parsedJSON){
    this.url=parsedJSON['url'];
    this.id=parsedJSON['id'];
  }
}

String myName(){
  return 'Saarthak';
}