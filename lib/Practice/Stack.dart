import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stacks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 200,
            width: 200,
          ),
          Container(
            color: Colors.green,
            height: 150,
            width: 150,
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            width: 100,
          )
        ],
      ),
    ),
  );
  }
}
