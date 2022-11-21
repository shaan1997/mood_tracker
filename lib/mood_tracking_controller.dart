import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mood_tracker/model/emoji_model.dart';
import 'package:mood_tracker/res.dart';

import 'network_provider/api_provider.dart';

class MoodTrackingController extends GetxController{
  var emojiList = [Res.ic_happy_emoji,Res.ic_angel_emoji,Res.ic_emoion_emoji,Res.ic_sad_emoji,Res.ic_angry_emoji];
  final List<MoodData> moodData = [
    MoodData(moodRate: 2,date: DateTime(2022,09,1,1)),
    MoodData(moodRate: 1,date: DateTime(2022,09,2,1)),
    MoodData(moodRate: 5,date:DateTime(2022,09,3,1) ),
    MoodData(moodRate: 4,date: DateTime(2022,09,4,1)),
    MoodData(moodRate: 3,date: DateTime(2022,09,5,1)),
    MoodData(moodRate: 2,date: DateTime(2022,09,10,1))
  ];
  
  var moodalyticsData = <Moodalytics>[].obs;
  var moodPoint = RxInt(-1);
  var personalData = Rx(Data());

  var isFirst = true.obs;
  var isEmpty = true.obs;


  @override
  void onInit() {
    getMoodData();
    super.onInit();
  }

  getTeamMoodEmoji(moodPoint){
    if(moodPoint==1){
      return Res.ic_happy_emoji;
    }
    else if(moodPoint==2){
      return Res.ic_angel_emoji;
    }
    else if(moodPoint==3){
      return Res.ic_emoion_emoji;
    }
    else if(moodPoint==4){
      return Res.ic_sad_emoji;
    }
    else {
      return Res.ic_angry_emoji;
    }
  }

  getTeamMoodString(moodPoint){
    if(moodPoint==1){
      return 'The team is feeling good today';
    }
    else if(moodPoint==2){
      return 'The team is feeling helpful today';
    }
    else if(moodPoint==3){
      return 'The team is feeling emotional today';
    }
    else if(moodPoint==4){
      return 'The team is feeling sad today';
    }
    else {
      return 'The team is feeling angry today';
    }
  }

  DateTime getdateTimeObject(String dateTime){
    if(dateTime !=''){
      DateTime tempDate = new DateFormat("yyyy-MM-dd").parse(dateTime);
      return tempDate;
    }
    else{
      return DateTime.now();
    }
  }

  Future<void> getMoodData() async {
    try {
      var params = {
        'user_profile':480
      };
      EmojiModel emojiModel = await ApiProvider.base().getMoodData(params);
      isFirst.value = false;
      if (emojiModel.responseCode==200) {
        moodalyticsData.value = emojiModel.moodalytics??[];
        moodPoint.value = emojiModel.teamMood??-1;
        personalData.value = emojiModel.data!;
        if(moodalyticsData.value.isNotEmpty && moodPoint.value !=-1){
          isEmpty.value = false;
        }
      } else {

      }
    } on HttpException catch (exception) {
      debugPrint(exception.message);
    } catch (exception) {
      debugPrint("Exception occurred: $exception");
    }
  }
}

class MoodData{
  int? moodRate;
  DateTime? date;
  MoodData({this.moodRate,this.date});
}