import 'package:let_tutor/injector/injector.dart';
import 'package:let_tutor/services/shared_preferences_service.dart';

class ServiceModule {
  ServiceModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerSingleton<SharedPreferencesService>(
      SharedPreferencesService(),
      signalsReady: true,
    );
  }
}