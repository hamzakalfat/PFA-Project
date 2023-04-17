import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
 class CloudstorageInfo {
   final String svgSrc , title ;
   final int quantit , percentage;
   final Color color ;

   CloudstorageInfo(
   {
     required this.svgSrc,
     required this.color,
     required this.title,

    required this.quantit,
     required this.percentage

   }
       );
 }
 List demoMywaste = [
   CloudstorageInfo(
     title: "plastic",
     quantit: 000,
     svgSrc: "",
     color: primaryColor,
     percentage: 20 ,
   ),
   CloudstorageInfo(
     title: "paper",
     quantit: 000,
     svgSrc: "",
     color: Colors.yellow,
     percentage: 10 ,
   ),
   CloudstorageInfo(
     title: "battery",
     quantit: 000,
     svgSrc: "",
     color: Colors.red,
     percentage: 10 ,
   ),
   CloudstorageInfo(
     title: "organic matters",
     quantit: 000,
     svgSrc: "",
     color: Colors.cyan,
     percentage: 10 ,
   ),
 ];