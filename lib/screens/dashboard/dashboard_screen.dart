import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants.dart';

import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: SingleChildScrollView (
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: 500,
                  color: Colors.white,
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              flex: 2,
              child: Container(
                height: 500,
                //decoration: BoxDecoration(color: secondaryColor, borderRadius: Border),
              )
    ),
    ],
    ),
        ]
    ),
    ),
    );
  }
}
