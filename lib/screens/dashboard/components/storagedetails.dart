// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:untitled/screens/dashboard/components/chart.dart';

import '../../../constants.dart';
import 'StorageInfoCard.dart';


class storagedetails extends StatelessWidget{
  const storagedetails({
    Key ? key,
  }) :super(key: key);
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(defaultPadding),

      decoration: const BoxDecoration(color: secondaryColor,borderRadius: BorderRadius.all(Radius.circular(10),
      ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Storage Details",
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, ),
          ),
          Chart(),
          StorageInfoCard(
            title: "plastic",
          ),
          StorageInfoCard(
            title: "paper",
          ),
          StorageInfoCard(
            title: "battery",
          ),
          StorageInfoCard(
            title: "organic matter",
          ),
        ],
      ),
    );
  }
}