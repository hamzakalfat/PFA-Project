import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/screens/main/main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: "TrashTracker Panel",
      theme : ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home:MainScreen(),
      );

  }
}
