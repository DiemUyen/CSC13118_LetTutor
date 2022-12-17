import 'package:let_tutor/data/repositories/schedule_repository_impl.dart';
import 'package:let_tutor/injector/injector.dart';

import '../data/repositories/repositories.dart';

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
        userProvider: injector(),
      ),
    );

    injector.registerFactory<CourseRepository>(
      () => CourseRepositoryImpl(
        courseProvider: injector(),
      ),
    );

    injector.registerFactory<ScheduleRepository>(
      () => ScheduleRepositoryImpl(
        scheduleProvider: injector(),
      ),
    );
  }
}
