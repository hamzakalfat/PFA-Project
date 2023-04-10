import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget{
  const Chart({
    Key ? key ,
  }) : super(key: key) ;
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height :200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiChartSelectionDatas,
            ),
          ),
          Positioned.fill(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height:  defaultPadding,),
              Text("29,1",style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white,
                  fontWeight: FontWeight.w600 ,
                  height: 0.5),
              ),
            ],
          ),
          ),
        ],

      ),
    );
  }
}
List<PieChartSectionData> paiChartSelectionDatas  = [
  PieChartSectionData(
      color:primaryColor,
      showTitle: false,
      radius: 25  ,
      value: 25),
  PieChartSectionData(
      color: const Color(0xFF26E5FF),
      showTitle: false,
      radius: 22 ,
      value: 20),
  PieChartSectionData(
      color: const Color(0xFFFFCF26),
      showTitle: false,
      radius: 19  ,
      value: 10),
  PieChartSectionData(
      color: const Color(0xFFEE2727),
      showTitle: false,
      radius: 16 ,
      value: 15),
  PieChartSectionData(
      color:primaryColor.withOpacity(0.1),
      showTitle: false,
      radius: 13 ,
      value: 25),];

