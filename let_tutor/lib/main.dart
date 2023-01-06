import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:let_tutor/configs/app_config.dart';
import 'package:let_tutor/injector/injector.dart';

import 'features/application/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.configDev();
  await Firebase.initializeApp();
  Injector.init();
  await Injector.instance.allReady();

  runApp(const MyApp());
}
