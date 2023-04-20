import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
 class CloudstorageInfo {
   final String svgSrc , title ;
   final int quantity , percentage;
   final Color color ;

   CloudstorageInfo(
   {
     required this.svgSrc,
     required this.color,
     required this.title,

    required this.quantity,
     required this.percentage

   }
       );
 }
 List demoMywaste = [
   CloudstorageInfo(
     title: "plastic",
     quantity: 000,
     svgSrc: "assets/images/iStock-trash.jpg",
     color: primaryColor,
     percentage: 20 ,
   ),
   CloudstorageInfo(
     title: "paper",
     quantity: 000,
     svgSrc: "assets/paper",
     color: Colors.yellow,
     percentage: 10 ,
   ),
   CloudstorageInfo(
     title: "batteries",
     quantity: 000,
     svgSrc: "assets/batteries",
     color: Colors.red,
     percentage: 10 ,
   ),
   CloudstorageInfo(
     title: "organic",
     quantity: 000,
     svgSrc: "assets/organic",
     color: Colors.cyan,
     percentage: 10 ,
   ),
 ];