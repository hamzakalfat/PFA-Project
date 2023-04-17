// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:untitled/controllers/menuAppController.dart' ;
import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';
import 'package:untitled/responsive.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: context.read<MenuAppController>().scaffoldKey ,
      drawer: SideMenu(),
      body: SafeArea(
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // desktop
              if(Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),

              Expanded(
                  flex: 5,
                  child: DashboardScreen(),


              ),

            ],

      ),
      ),
    );
  }
}