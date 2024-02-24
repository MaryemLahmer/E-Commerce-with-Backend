import 'package:flutter/material.dart';
import 'App.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Tod: Add Widgets Binding
  /// Todo: Init local Storage
  /// Todo: Init payment methods
  /// Todo: Await Native Splash
  /// Todo: Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()),);

  /// Todo: Initialize Authentication
  runApp(const App());
}

class FlutterNativeSplash {}
