import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'App.dart';
import 'package:firebase_core/firebase_core.dart';
import 'data/repositories/authentication_repo.dart';
import 'firebase_options.dart';
import 'firebase_options.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  /// Widgets Binding
  final WidgetsBinding widgetBinding = WidgetsFlutterBinding.ensureInitialized();

  /// Init local Storage
  await GetStorage.init();

  /// Todo: Init payment methods
  /// Todo: Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);
  /// Todo: Initialize Firebase & Authentication Repository
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()),);

  /// Todo: Initialize Authentication
  runApp(const App());
}

