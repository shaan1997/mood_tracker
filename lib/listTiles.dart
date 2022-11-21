import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_utils.dart';
import 'model/emoji_model.dart';

class ListTiles{
  static getTitlesData(month,year){
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
                     child: Text('01/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 2 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('02/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 3 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('03/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 4 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('04/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 5 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('05/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 6 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('06/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 7 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('07/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 8 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('08/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 9 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('09/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 10 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('10/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 11 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('11/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 12 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('12/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 13 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('13/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 14 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('14/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 15 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('15/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 16 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('16/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 17 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('17/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 18 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('18/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 19 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('19/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 20 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('20/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 21 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('21/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 22 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('22/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 23 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('23/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 24 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('24/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 25 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('25/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 26 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('26/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 27 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('27/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 28 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('28/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 29 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('29/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 30 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('31/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
           }
           break;

           case 31 :{
             //return Text('01/09/2022',style: TextStyle(color: Colors.white),);
             return SideTitleWidget(
                 angle: AppUtils.radianToDegree(360),
                 child: Container(
                     padding: EdgeInsets.only(right: 55),
                     child: Text('31/${month}/${year}',style: TextStyle(color: Colors.white),)), axisSide: titleMeta.axisSide);
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