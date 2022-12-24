import 'package:flutter/material.dart';
import 'package:let_tutor/configs/app_config.dart';
import 'package:let_tutor/injector/injector.dart';

import 'features/application/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.configDev();
  Injector.init();
  await Injector.instance.allReady();

  runApp(const MyApp());
}
