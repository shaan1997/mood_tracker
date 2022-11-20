import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_utils.dart';

class ListTiles{
  static getTitlesData(){
   return FlTitlesData(
     show: true,
     bottomTitles: AxisTitles(
         sideTitles: SideTitles(
       showTitles: true,
       reservedSize: 35,
       getTitlesWidget: (data,titleMeta){
          print('tilesWidget');
          print(data);
         switch(data.toInt()){
           case 1 :{
             return SideTitleWidget(
                angle: AppUtils.radianToDegree(360),
                 space: 1.0,
                 child: Container(
                   padding: EdgeInsets.only(right: 55),
                     child: Text('01/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 2 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('02/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 3 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('03/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 4 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('04/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 5 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('05/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 6 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('06/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 7 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('07/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 8 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('08/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 9 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('09/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 10 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('10/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 11 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('11/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 12 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('12/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 13 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('13/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 14 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('14/09/2022',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           default:{
             return Text(data.toString(),style: TextStyle(color: Colors.white),);
           }
           break;
         }


       },
     )),
     leftTitles: AxisTitles(sideTitles: SideTitles(
       showTitles: true,
       reservedSize: 35,
       getTitlesWidget: (data,titleMeta){
         return Text(data.toString(),style: TextStyle(color: Colors.white),);
       },
     ))
   );
  }
}