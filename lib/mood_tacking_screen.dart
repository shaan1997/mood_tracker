import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_tracker/res.dart';

import 'listTiles.dart';
import 'mood_tracking_controller.dart';

class MoodTrackingScreen extends GetView<MoodTrackingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Xcellence PVT LTD Company, Lucknow',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Obx((){
          return SingleChildScrollView(
            child: controller.isFirst.value?Container(
              height: Get.height,
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ): controller.isEmpty.value?Container(
              height: Get.height,
                 alignment: Alignment.center,
              child: Text('No data found',style: TextStyle(color: Colors.white,fontSize: 20),),
            ): Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      ClipOval(child: Image.asset(Res.ic_profile_image,height: 80,width: 80,)),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('John Deo',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22
                            ),),
                          SizedBox(height: 10,),
                          Text('Developer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: Get.height*0.27,
                  width: Get.width,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 25),
                  padding: EdgeInsets.only(left: 10,top: 15,right: 10),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.white24,Colors.white10,Colors.black12,Colors.black12,],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        //tileMode: TileMode.clamp,
                        //stops: [0.3,0.2]
                      ),
                      border: Border.all(color: Colors.amber),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: const TextSpan(
                          children: [
                            TextSpan(text: 'How\'s the ',style: TextStyle(fontSize: 22)),
                            TextSpan(text: 'Mood \n',style: TextStyle(color: Colors.amber,fontSize: 22)),
                            TextSpan(text: 'Today',style: TextStyle(fontSize: 22))
                          ]
                      ),),
                      Spacer(flex: 1),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for(var emoji in controller.emojiList)
                            Image.asset(emoji,height: 40,width: 40,)
                        ],
                      ),
                      Spacer(flex: 3,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 10,left: 15,right: 15),
                  child: Divider(color: Colors.grey,thickness: 1.0,),
                ),
                Container(
                  width: Get.width,
                  margin: EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Team Mood',style: TextStyle(color: Colors.white,fontSize: 18),),
                      SizedBox(width: 20,),
                      Flexible(child: Divider(color: Colors.grey,thickness: 1.0,))
                      /* Container(
                     height: 1,
                     width: Get.width*0.63,
                     margin: EdgeInsets.only(right: 15),
                     color: Colors.grey,
                     child: Text('hh'),
                   )*/
                    ],
                  ),
                ),
                Container(
                  height: Get.height*0.15,
                  width: Get.width,
                  //alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 15,right: 15,top: 25),
                  padding: EdgeInsets.only(left: 10,top:05,right: 10),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.white24,Colors.white10,Colors.black12,Colors.black12,],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        //tileMode: TileMode.clamp,
                        //stops: [0.3,0.2]
                      ),
                      border: Border.all(color: Colors.amber),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //StringQuote(text: 'The team is feeling good today',textStyle: TextStyle(color: Colors.white),).quote(),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10,right: 15),
                              child: Image.asset(Res.ic_forward_quote,height: 15,width: 15,color: Colors.amber,),
                            ),
                            Expanded(child: Text(controller.getTeamMoodString(controller.moodPoint.value),maxLines: 2,style: TextStyle(color: Colors.white,fontSize: 20),)),
                            Padding(
                              padding: const EdgeInsets.only(top: 35,right: 15),
                              child: Image.asset(Res.ic_back_quote,height: 15,width: 15,color: Colors.amber,),
                            ),
                          ],
                        ),
                      ),
                      // Icon(Icons.format_quote),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Image.asset(controller.getTeamMoodEmoji(controller.moodPoint.value),height: 40,width: 40,),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Image.asset(controller.getTeamMoodEmoji(controller.moodPoint.value),height: 40,width: 40,),
                            SizedBox(width: 10,),
                            Flexible(child: Text('Moodalytics',maxLines: 1,style: TextStyle(color: Colors.white,fontSize: 20,overflow: TextOverflow.ellipsis),))
                          ],
                        ),
                      ),
                      Flexible(flex: 1,child: Text('(Trend chart on Mood)',maxLines: 1,style: TextStyle(color: Colors.white,fontSize: 14),))
                    ],
                  ),
                ),
                Container(
                  height: Get.height*0.37,
                  padding: EdgeInsets.only(bottom: 50),
                  width: Get.width,
                  child: LineChart(
                    LineChartData(
                      minX: 1,
                      maxX: 30,
                      minY: 1,
                      maxY: 5,
                      lineBarsData: [
                        LineChartBarData(
                          spots: controller.moodalyticsData.value.map((point) => FlSpot(double.parse(controller.getdateTimeObject(point.createdAt??'').day.toString()), double.parse(point.emojiPoint.toString()))).toList(),
                          isCurved: false,
                          color: Colors.green,
                          show: true,
                          //showingIndicators: controller.moodData.map((data) => data.moodRate!).toList()
                          /*dotData: FlDotData(
                          show: true,
                          checkToShowDot: (spot,chartData){
                            print('chartData');
                            print(spot.x);
                            print(chartData.spots);

                            print('------------------------');
                            return true;
                          }
                        )*/
                        ),
                      ],
                      titlesData: ListTiles.getTitlesData(controller.getdateTimeObject(controller.moodalyticsData.value[0].createdAt??'').month,controller.getdateTimeObject(controller.moodalyticsData.value[0].createdAt??'').year),
                      borderData: FlBorderData(show: true,border: Border.all(color: Colors.white24,width: 1)),
                      gridData: FlGridData(
                        show: true,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: Colors.white24,
                            strokeWidth: 1,
                          );
                        },
                        drawVerticalLine: true,
                        verticalInterval: 4.0,
                        getDrawingVerticalLine: (value) {
                          return FlLine(
                            color: Colors.white24,
                            strokeWidth: 1,
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
