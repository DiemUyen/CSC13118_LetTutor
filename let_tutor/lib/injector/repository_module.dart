import 'package:let_tutor/injector/injector.dart';

import '../data/repositories/repositories.dart';
import '../data/repositories/user_repository.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(
        authProvider: injector(),
      ),
    );

    injector.registerFactory<TutorRepository>(
      () => TutorRepositoryImpl(
        tutorProvider: injector(),
      ),
    );

    injector.registerFactory<UserRepository>(
      () => UserRepositoryImpl(
        injector(),
      ),
    );
  }
}
