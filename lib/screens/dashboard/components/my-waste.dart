// ignore_for_file: prefer_const_constructors, camel_case_types, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/Mywaste.dart';
import 'package:untitled/responsive.dart';
import 'package:untitled/screens/dashboard/components/add_new.dart';
import 'package:untitled/screens/dashboard/components/waste_info_card.dart';

class Mywaste extends StatelessWidget {
  const Mywaste({
    Key ? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(" My Waste", style: Theme
                .of(context)
                .textTheme
                .titleMedium,),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding/ ( Responsive.isMobile(context) ? 2:1),),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            addnew()));
              },
              icon: Icon(Icons.add),
              label: Text("add new"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding,),
        Responsive(
          mobile:wasteInfoCardGridView(
            crossAxisCount: _size.width < 650 ?2 : 4,
            childAspectRatio: _size.width< 650 ? 1.3 : 1 ,) ,
          tablet: wasteInfoCardGridView(),
          desktop: wasteInfoCardGridView(childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,),
        ),


      ],

    );
  }
}
 class wasteInfoCardGridView extends StatelessWidget {
  const wasteInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4, this.childAspectRatio=1,
 }) : super (key: key);
  final int crossAxisCount ;
  final double childAspectRatio ;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMywaste.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          wasteInfoCard(info: demoMywaste[index],),
    );


  }



 }



