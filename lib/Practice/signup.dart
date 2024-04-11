import 'package:flutter/material.dart';
import 'package:splash_pages/Practice/login_page.dart';
import 'package:splash_pages/utils/textThemes.dart';
import '../utils/mycolors.dart';

class SignupPage extends StatefulWidget {
  String username='ammustephy';
  String password='ammu@13';
  // var usercontroller=TextEditingController();
  // var psdcontroller=TextEditingController();

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController passController = TextEditingController();

   var formkey = GlobalKey<FormState>();
  var psd_visibility=true;
 // formkey used to monitor the state of entire form and validate it
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          //physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              // key:formkey,// if we do not set key here validation will not occur
              child: Column(
                children: [
                  const SizedBox(height: 50), // Adding space at the top
                  Text(
                      "Sign up",
                      style: MyTextThemes.textHeading
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                      "Create an account, it's free",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                          color: Colors.grey,
                      )
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "UserName",
                      hintText: 'Enter your Username here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator:(email){
                      if(email!.isEmpty || !email.contains('@')){
                        return "email must be a valid email";
                      }else{
                        return null;
                      }
                    } ,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: 'Enter your email here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passController,
                    validator: (password){
                      if(password!.isEmpty || password.length < 6) {
                        return 'Password is empty or / check the length';
                      }else{
                        return  null;
                      }
                    },
                    obscuringCharacter: '*',
                    obscureText: psd_visibility,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: IconButton(onPressed: (){

                      }, icon: Icon(
                          psd_visibility==true? Icons.visibility_off : Icons.visibility
                      )),
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter your password here',
                      helperText:
                      'Password must contain upper and lowercase letters',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (confirmpassword){
                      if(confirmpassword!.isEmpty || confirmpassword != passController.text){
                        return "password empty/mismatch";
                      }else{
                        return null;
                      }
                    },
                    obscuringCharacter: '*',
                    obscureText: psd_visibility,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: IconButton(onPressed: (){

                      }, icon: Icon(
                          psd_visibility==true? Icons.visibility_off : Icons.visibility
                      )),
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      hintText: 'Confirm your password here',

                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      // if (username == usercontroller.text && password == psdcontroller.text){
                       var valid = formkey.currentState!.validate();
                       if(valid == true){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>LoginPage()));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Registration failed")));
                      }
                    },
                    color: Colors.blue,
                    minWidth: 200,
                    shape: const StadiumBorder(),
                    child: const Text("Sign up"),
                  ),
                  const SizedBox(height: 20), // Adjusted spacer
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                          "Already have an account? Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}