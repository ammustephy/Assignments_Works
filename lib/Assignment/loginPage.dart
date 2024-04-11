// import 'package:fltprojeect/Assignment/assgn_sign.dart';
// import 'package:fltprojeect/screens/Listview/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:splash_pages/Assignment/SignUpPage.dart';
import 'package:splash_pages/Assignment/homePage.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _LoginsignState();
}

class _LoginsignState extends State<loginPage> {
  String username = "admin@";

  String password = "abc123";

  var usercontroller = TextEditingController();

  var pwdcontroller = TextEditingController();

  var pwd_visibility = true;

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: Column(
            children: [
              Container(
                height: devHeight * .3,
                width: devWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1491147334573-44cbb4602074?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8f")),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                  ),
                ),
              ),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              Text("Login to your account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black)),
              TextFormField(
                controller: usercontroller,
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "email must be valid";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: "Full Name"),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pwdcontroller,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "password is empty/check the length";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (pwd_visibility == true) {
                            pwd_visibility = false;
                          } else {
                            pwd_visibility = true;
                          }
                        });
                      },
                      icon: Icon(pwd_visibility == true
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forgot Password?",
                ),
              ),
              MaterialButton(
                onPressed: () {
                  if (username == usercontroller.text &&
                      password == pwdcontroller.text) {
                    // successSnackbar(context);
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("sucess")));

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    // errorSnackbar(context);

                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("error")));
                  }
                  usercontroller.clear();
                  pwdcontroller.clear();
                },
                color: Colors.green,
                minWidth: 200,
                shape: StadiumBorder(),
                child: const Text("Login"),
              ),
              RichText(
                text: TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => signUpPage()));
                          },
                        text: "SignUp",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black))
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            ],
          ),
        ),
      ),
    );
  }
}