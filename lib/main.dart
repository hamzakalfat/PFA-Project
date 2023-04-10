// ignore_for_file: prefer_const_constructors

import 'package:untitled/login_screen.dart';
import 'package:flutter/material.dart';
import '';

void main() {
  runApp( MaterialApp(
    initialRoute: '/loginScreen',
    debugShowCheckedModeBanner: false,

    routes: {
      '/loginScreen':(context) => LoginScreen(),

    },
  ));
}