import 'package:flutter/material.dart';
import 'package:splash_pages/Assignment/welcomePage.dart';
import 'package:splash_pages/Practice/ATM_Card.dart';
import 'package:splash_pages/Practice/listview/home.dart';
// import 'package:splash_pages/Practice/home.dart';
import 'package:splash_pages/Practice/listview/listview%20using%20builder.dart';
import 'package:splash_pages/Practice/listview/listview_separate.dart';
import 'package:splash_pages/Practice/login_page.dart';
import 'package:splash_pages/Practice/signup.dart';
import 'package:splash_pages/Practice/welcome_page.dart';
import 'package:splash_pages/screens/loginPage.dart';
import 'package:splash_pages/screens/registration.dart';
import 'package:splash_pages/screens/splashwithbckpic.dart';
import 'package:splash_pages/whatsapp/Call.dart';
import 'package:splash_pages/whatsapp/chat.dart';

import 'Assignment/Spotify.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SignupPage(),
      // home: WelcomePage(),
      // home: LoginPage(),
      // home: RegistrationPage(),
      //  home: ListView_Builder(),
      // home: ListView_Separated(),
      // home: HomePage(),
      //  home: ChatPage(),
      home: welcome_Page(),
      // home: Stack(),
      //  home: AtmCard(),
      // home: CallScreen(),
    );
  }
}