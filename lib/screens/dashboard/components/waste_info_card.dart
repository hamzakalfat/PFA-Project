// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/Mywaste.dart';

class wasteInfoCard  extends StatelessWidget{
  const wasteInfoCard ({
    Key? key,
    required this.info,

  }): super (key: key);
  final CloudstorageInfo info ;
  @override
  Widget build(BuildContext context){
    return  Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding*0.75 ),
               // height: 40,
                //width: 40,

                child: //SvgPicture.asset(info.svgSrc, color: info.color ,),
                 SizedBox(
                   height: 40,
                   width: 40,
                   child: Image.asset(info.svgSrc ,
                   ),
                 ),
              ),
              Icon(Icons.more_vert, color: Colors.white54,),


            ],
          ),
          Text(info.title, maxLines: 1, overflow:  TextOverflow.ellipsis,),
          ProgressLine(color : info.color , percentage: info.percentage,),
          Row(

            children: [
              Text("${info.quantity} waste", style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white70), )
            ],
          )
        ],
      ),
    );
  }

}
class ProgressLine  extends StatelessWidget{
  const ProgressLine ({
    Key ? key ,
    this.color = primaryColor,
    required this.percentage ,


  }) : super  ( key : key);
  final Color color;
  final  int percentage ;
  @override
  Widget build (BuildContext context){
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),

          ),
        ),
        LayoutBuilder(builder: (context,constaints) =>  Container(
          width: constaints.maxWidth* (percentage/100),
          height: 5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(10)),

          ),
        ),),
      ],
    );
  }
}
