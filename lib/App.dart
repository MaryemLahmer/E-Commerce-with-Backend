import 'package:e_commerce_with_backend/utils/constants/colors.dart';
import 'package:e_commerce_with_backend/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/authentication/screens/onboarding_screens/onboarding.dart';

//--Use this Class to setup themes, initial Bindings, any animations and much more
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
        ///home: const OnBoardingScreen(),
        ///show loader or circular progress indicator meanwhile authentication repository is deciding to show relevant screen
      home:const Scaffold(backgroundColor: MColors.primary,body: Center(child: CircularProgressIndicator(color: Colors.white,),),)

    );
  }
}
