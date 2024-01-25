import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index){}

  /// Jump to the specific dot selected page
  void dotNavigationClick(index){}

  /// Update current index & jump next page
  void nextPage(){}
  
  /// Update Current Index & jump to the last page
  void skipPage(){}
  }
}
