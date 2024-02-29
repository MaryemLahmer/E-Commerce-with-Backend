import 'package:e_commerce_with_backend/features/authentication/screens/login/login.dart';
import 'package:e_commerce_with_backend/features/authentication/screens/onboarding_screens/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();

  /// called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show relevant screen
  screenRedirect() async {
    // Local Storage
    if(kDebugMode){
      print("============ Get Storage Auth Repo============");
      print(deviceStorage.read('IsFirstTime'));
    }
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true ? Get
        .offAll(() => const LoginScreen()) : Get.offAll(()=>const OnBoardingScreen())
    ;
  }
/* ---------- Email & password sign-in ---------- */

/// [Email Authentication] - Sign In
/// [Email Authentication] - Register
/// [ReAuthentication] - ReAuthentication User
/// [Email Verification] - Mail Verification
/// [Email Authentication] - forget Password

/* ---------- Federated identity & social sign-in ---------- */

/// [Google Authentication] - Google
/// [Facebook Authentication] - Facebook

/* ---------- ./end Federated identity & social sign-in ---------- */

/// [Logout User] - Valid for any user
/// [Delete User] - Delete user Auth and Firestore Account
}
