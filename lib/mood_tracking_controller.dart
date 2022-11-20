import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
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

  Future<void> getMoodData() async {
    try {
      var params = {
        'user_profile':480
      };
      EmojiModel emojiModel = await ApiProvider.base().getMoodData(params);
      if (emojiModel.responseCode==200) {


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