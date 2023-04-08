import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: SingleChildScrollView (
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text (
                  "Dashboard",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Spacer(),
                Expanded(
                    child: TextField (
                      decoration: InputDecoration(
                          fillColor: secondaryColor,
                          filled: true,
                          border: OutlineInputBorder (
                            borderSide: BorderSide.none,
                            borderRadius:
                                 const BorderRadius.all(Radius.circular(10)),

                          ),
                        suffixIcon: Container(
                            padding: EdgeInsets.all(defaultPadding*0.75),
                            decoration: BoxDecoration(
                                color: primaryColor,
                            ),
                          child: SvgPicture.asset ("assets/icons/search-right-1507-svgrepo-com.svg")
                      ),

                      ),
                    )
                )
          ],
        ),
      ],
      ),
    ),
    );
  }
}
