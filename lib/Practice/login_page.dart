import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:splash_pages/Practice/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}
// mutable state og loginpage//can not modify// here we can create and rebuild widget tree using createState() and setState()
class _LoginPageState extends State<LoginPage> {
  TextEditingController passController=TextEditingController();

  var formkey=GlobalKey<FormState>();

  var pwd_visibility=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              //to avoid scrollable action
              physics: const NeverScrollableScrollPhysics(),
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        const SizedBox(height: 50),
                        Text("Login",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.black)),
                        Text("Login to your Account",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.grey)),
                        TextFormField(
                          validator: (email){
                            if(email!.isEmpty || !email.contains("@")){
                              return "email must be valid";
                            }
                            else{
                              return null;
                            }
                          },

                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              border: OutlineInputBorder(),
                              labelText: "Email",
                              hintText: "Enter Your Email"
                          ),

                        ),
                        const SizedBox(height: 15,
                        ),
                        TextFormField(
                          controller: passController,
                          validator: (password){
                            if(password!.isEmpty || password.length <6) {
                              return "password is empty/check the length";
                            }
                            else{
                              return null;
                            }
                          },
                          obscuringCharacter: '*',
                          obscureText: pwd_visibility,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password_outlined),
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                if(pwd_visibility==true){
                                  pwd_visibility=false;
                                }else{
                                  pwd_visibility=true;
                                }
                              });

                            }, icon: Icon(
                              pwd_visibility==true? Icons.visibility_off : Icons.visibility
                            )),
                            border: OutlineInputBorder(),
                            labelText: "Password",
                            hintText: 'Enter your password here',
                            helperText:
                            'Password must contain upper and lowercase letters',
                          ),
                        ),
                        const SizedBox(height: 15,
                        ),
                        MaterialButton(onPressed: () {
                          var  valid=formkey.currentState!.validate();
                          if(valid==true){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())) ;
                          }
                          else{
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Registration Failed")));

                          }
                        },
                          color: Colors.blue,
                          minWidth: 200,
                          shape: StadiumBorder(),
                          child: Text("Login"),


                        ),

                        RichText(text:  TextSpan(
                            text: "Don't have an account?",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap=(){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupPage()));
                                    },
                                  text: "SignUp",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black)


                              )

                            ])),
                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.2),
                        Image.network(
                          "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSBIIGUHvS-12g1XnSDw2vjRXr66cCeRxdgZCMmpqLFEvLcDl6S",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  )
              ),


            ),
            ),
        );
    }
}