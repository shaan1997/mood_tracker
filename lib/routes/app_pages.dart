
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../mood_tacking_screen.dart';
import '../mood_tracking_binding.dart';
import 'app_routes.dart';

class AppPages {
  static var transitionDuration = const Duration(
    milliseconds: 550,
  );

  static final pages = [
    GetPage(
      name: AppRoutes.initialPage,
      transitionDuration: transitionDuration,
      page: () => MoodTrackingScreen(),
      binding: MoodTrackingBinding(),
      transition: Transition.native,
    ),
  ];
}
