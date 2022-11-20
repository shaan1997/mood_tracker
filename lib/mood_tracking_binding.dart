import 'package:get/get.dart';

import 'mood_tracking_controller.dart';

class MoodTrackingBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<MoodTrackingController>(
          () => MoodTrackingController(),
    );
  }
}
