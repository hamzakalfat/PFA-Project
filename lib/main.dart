import 'package:untitled/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/loginScreen',
    debugShowCheckedModeBanner: false,
    routes: {
      '/loginScreen':(context) => LoginScreen(),
      // chehya tayba
    },
  ));
}