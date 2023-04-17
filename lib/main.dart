// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/login_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/foundation.dart';
import 'package:untitled/controllers//menuAppController.dart' as my;
// Your code here

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context)
  { return MaterialApp(
      debugShowCheckedModeBanner: false,
   title: 'pfa mobile',
  theme: ThemeData.dark().copyWith(
   scaffoldBackgroundColor: bgColor,
  textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply(bodyColor: Colors.white)),
  canvasColor: secondaryColor,
  ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<my.MenuController>(
            create: (context) => my.MenuController(),

          ),
        ],
        child: LoginScreen(),
      ),
  );
  }
}