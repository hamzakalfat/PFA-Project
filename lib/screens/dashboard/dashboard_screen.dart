// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

//import 'dart:html';

//import 'package:fl_chart/fl_chart.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/dashboard/components/header.dart';

//import 'components/StorageInfoCard.dart';
//import 'components/chart.dart';
import 'components/storagedetails.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: SingleChildScrollView (
        padding: EdgeInsets.all(defaultPadding),
        child: Column(

          children:  [
            header(),
            SizedBox( height: defaultPadding ,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                    child:
                Container(
                  padding: EdgeInsets.all(defaultPadding),
                  height: 500,
                  color: Colors.white,
                )
                ),
                SizedBox(width: defaultPadding ,),
                Expanded(
                    flex:2,
                    child: storagedetails(),

                ),
                    ],
                  ),


              ],
            )

      ),
    );
  }
}
