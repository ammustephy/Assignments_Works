import 'package:flutter/material.dart';
import 'package:splash_pages/Assignment/youtube.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      home: youtube(),
    );
  }
}