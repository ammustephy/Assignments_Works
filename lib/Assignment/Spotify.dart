import 'package:flutter/material.dart';

class spotify extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Center(child: Image(image: NetworkImage('https://img.icons8.com/?size=48&id=MeCPxrBjElfM&format=png'),),),

    );
  }


}