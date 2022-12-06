import 'package:let_tutor/injector/injector.dart';

import '../data/repositories/auth_repository.dart';
import '../data/repositories/auth_repository_impl.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(
        authProvider: injector(),
      ),
    );
  }
}
