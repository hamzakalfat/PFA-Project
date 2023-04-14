// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/total/total_screen.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:untitled/constants.dart';
import 'package:flutter/services.dart';


//import '../dashboard/dashboard_screen.dart';
//import 'components/side_menu.dart';

class MainScreen1 extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text('Zero Waste',
                style: TextStyle(
                  color: Colors.red,
                ),
                 ),
              backgroundColor: bgColor,

            ),
            body :Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children : [
                 SizedBox( height: 180,
                   child:
                   Image(
                    image: AssetImage('assets/dechet.jpg'),
                ),
                 ),
                 totalScreen(),

                ],
              ),
            ),






            




        );


  }
}