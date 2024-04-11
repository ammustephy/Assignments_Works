

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splash_pages/Assignment/SignUpPage.dart';
import 'package:splash_pages/Assignment/loginPage.dart';

class welcome_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1491147334573-44cbb4602074?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'))),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .10,
              ),
              Padding(
                padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*.05),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The best',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'app for',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'your plants',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ]),
                ),
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width*.87,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signUpPage()));
                },
                color: Colors.white,
                shape: const StadiumBorder(),
                child: const Text("Sign Up",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              // SizedBox(height: MediaQuery.of(context).size.height*.18,),
              // MaterialButton(
              //     minWidth: MediaQuery.of(context).size.width*.87,
              //     onPressed: () {},
              //     color: Colors.white,
              //     shape: const StadiumBorder(),
              //     child: const Text(
              //       'Sign up',
              //       style: TextStyle(
              //           fontSize: 17, color: Color.fromARGB(255, 18, 189, 169)),
              //     )),
              // MaterialButton(
              //     minWidth: MediaQuery.of(context).size.width*.87,
              //     onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> loginPage()));},
              //     color: const Color.fromARGB(255, 18, 189, 169),
              //     shape: const StadiumBorder(),
              //     child: const Text(
              //       'Log in',
              //       style: TextStyle(fontSize: 17, color: Colors.white),
              //     )),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width*.87,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginPage()));
                },
                color: Colors.green,
                shape: const StadiumBorder(),
                child: const Text("Log in",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}