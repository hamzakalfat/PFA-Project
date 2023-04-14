// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants.dart';

//import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center   ,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          Card(
          color: secondaryColor,
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              'Pour vous , pour nous et pour tous ceux qui viendront après nous ? ',

              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        ],
        ),
      ),
    );
  }
}