import 'package:flutter/material.dart';

class youtube extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Center(child: Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/5968/5968852.png'),),),

    );
  }


}