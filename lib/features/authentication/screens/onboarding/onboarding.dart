import 'package:e_commerce_with_backend/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../widgets/onboarding_dot_navigation.dart';
import '../widgets/onboarding_next_button.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: MImages.onboardingImage1,
                  title: MTexts.onBoardingTitle1,
                  subtitle: MTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: MImages.onboardingImage2,
                  title: MTexts.onBoardingTitle2,
                  subtitle: MTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: MImages.onboardingImage3,
                  title: MTexts.onBoardingTitle3,
                  subtitle: MTexts.onBoardingSubTitle3),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation Smooth Page Indicator
          const OnBoardingDotNavigation(),

          const OnBoardingNextBottom()
        ],
      ),
    );
  }
}

