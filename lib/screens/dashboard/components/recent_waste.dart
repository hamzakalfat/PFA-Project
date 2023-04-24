// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/Recentwaste.dart';

class recentWaste extends StatelessWidget {
  const recentWaste({
    Key? key,
  }): super (key : key);
  @override
  Widget build(BuildContext context){
    return  Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10),)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" Recent waste",
            style: Theme.of(context).textTheme.subtitle1 ,),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(label: Text("type of waste "),),
                  DataColumn(label: Text("Date"),),
                  DataColumn(label: Text("Quantity"),),
                ],
                rows: List.generate(demoRecentwaste.length, (index) => recentWasteDataRow(demoRecentwaste[index]))
            ),
          ),
        ],
      ),
    );
  }

}


DataRow recentWasteDataRow(Recentwaste wasteinfo ) {
  return DataRow(cells:[
    DataCell(Row(
      children: [
        SvgPicture.asset(wasteinfo.icon,
          height: 30,
          width: 30,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(wasteinfo.title),
        ),
      ],
    ),),
    DataCell(Text(wasteinfo.date)),
    DataCell(Text(wasteinfo.quantity)),


  ],
  );

}
