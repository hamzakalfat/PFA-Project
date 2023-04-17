// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';


// Your code here

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldkey;

  void controlMenu() {
    if (!_scaffoldkey.currentState!.isDrawerOpen) {
      _scaffoldkey.currentState!.openDrawer();
    }
  }
}


