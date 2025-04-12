import 'package:ecom_firebase/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:ecom_firebase/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Same Firebase configuration for both environments
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initializeDependencies();
  const environment = 'prod';
  runApp(MyApp(environment: environment));
}
