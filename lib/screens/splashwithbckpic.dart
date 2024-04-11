import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_pages/main.dart';
import 'package:splash_pages/screens/loginPage.dart';

class splashwithbckpic extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginPage()));

    });
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSckXcFtLeXrjpOtEiUmC1bxwSBDNxWktDzHtrE7BVWEpse3pjNbsc7BfFwC0ho2zCtbN4&usqp=CAU'))),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("assets/icon/14890414.png")),
                  Text("Myapp", style: TextStyle(fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,))
                ]),
          )),

    );
  }


  }
