import 'package:get_it/get_it.dart';
import 'package:let_tutor/injector/bloc_module.dart';
import 'package:let_tutor/injector/repository_module.dart';
import 'package:let_tutor/injector/rest_client_module.dart';
import 'package:let_tutor/injector/service_module.dart';

class Injector {
  static GetIt instance = GetIt.instance;
  Injector._();

  static void init() {
    ServiceModule.init();
    RestClientModule.init();
    RepositoryModule.init();
    BlocModule.init();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}