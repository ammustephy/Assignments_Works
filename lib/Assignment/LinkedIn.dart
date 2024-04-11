import 'package:flutter/material.dart';

class linkedIn extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 109, 130, 0.892),
      body: Center(child: Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/15527/15527631.png'),),),

    );
  }


}