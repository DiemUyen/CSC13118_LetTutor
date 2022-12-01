import 'package:let_tutor/features/application/bloc/application_bloc.dart';
import 'package:let_tutor/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerSingleton<ApplicationBloc>(
      ApplicationBloc(
        sharedPreferencesService: injector(),
      ),
    );
  }
}
