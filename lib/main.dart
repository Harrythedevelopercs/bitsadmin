

import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'register.dart';
import 'homescreen.dart';



void main() {

  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    title: "BitsWits Admin Panel",
    initialRoute: 'login',
    routes: {
      'login' : (context) => LoginScreen(),
      'register' : (context) => RegisterScreen(),
      'home' : (context) => HomeScreen(),
    },
  ));
}


