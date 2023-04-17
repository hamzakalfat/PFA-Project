// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

//import 'dart:html';

//import 'package:fl_chart/fl_chart.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/Recentwaste.dart';
import 'package:untitled/responsive.dart';
import 'package:untitled/screens/dashboard/components/header.dart';
import 'package:untitled/screens/dashboard/components/my-waste.dart';
import 'package:untitled/screens/dashboard/components/recent_waste.dart';

//import 'components/StorageInfoCard.dart';
//import 'components/chart.dart';
import 'components/storagedetails.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(

          children: [
            header(),
            SizedBox(height: defaultPadding,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Mywaste(),
                      SizedBox(height: defaultPadding,),
                      recentWaste(),
                      if ( Responsive.isMobile(context))
                        SizedBox(height: defaultPadding,),
                      if ( Responsive.isMobile(context))
                        storagedetails(),
                    ],
                  ),
                ),
                if (! Responsive.isMobile(context))
                SizedBox(width: defaultPadding,),
                // on Mobile means if the screenn is less than 850 we dont want to show it

                if (! Responsive.isMobile(context))
                Expanded(
                  flex: 2,
                  child: storagedetails(),

                ),
              ],
            ),
          ],

        ),

      ),
    );
  }
}
