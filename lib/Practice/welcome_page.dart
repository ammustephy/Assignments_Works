import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:splash_pages/Practice/login_page.dart';
import 'package:splash_pages/Practice/signup.dart';
import 'package:splash_pages/screens/loginPage.dart';
import 'package:splash_pages/screens/registration.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 50), // Adding space at the top
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "kSlash Flutter provides extraordinary flutter tutorials. Do Subscribe!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 100.0), // Adjust top margin as needed
                    child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRam2T8l7egqYtek9nSXEWp8_Rdz4WnuVoMqxFXLIWlXF9c4fEg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  color: Colors.white,
                  minWidth: 200,
                  shape: const StadiumBorder(),
                  child: const Text("Login",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),


                  const SizedBox(
                  height: 15,
                ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
                color: Colors.blue,
                minWidth: 200,
                shape: const StadiumBorder(),
                child: const Text("Sign up",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}