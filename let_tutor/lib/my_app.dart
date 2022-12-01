import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'common/app_themes.dart';
import 'configs/app_config.dart';
import 'features/application/bloc/application_bloc.dart';
import 'features/authentication/sign_in_form.dart';
import 'generated/l10n.dart';
import 'injector/injector.dart';
import 'router/app_router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final ApplicationBloc _bloc;
  late String _locale;
  late bool _isDarkMode;
  late final AppLocalizationDelegate appLocalizationDelegate;

  @override
  void initState() {
    _locale = AppConfig.defaultLocale;
    _bloc = Injector.instance<ApplicationBloc>();
    _bloc.add(const ApplicationLoaded());
    _isDarkMode = false;
    appLocalizationDelegate = const AppLocalizationDelegate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: _bloc,
        ),
      ],
      child: BlocListener<ApplicationBloc, ApplicationState>(
        bloc: _bloc,
        listener: (context, state) {
          if (state.status == UIStatus.loadSuccess) {
            if (_locale != state.locale) {
              setState(() {
                _locale = state.locale;
              });
            }

            if (_isDarkMode != state.isDarkMode) {
              setState(() {
                _isDarkMode = state.isDarkMode;
              });
            }
          }
        },
        child: MaterialApp(
          localizationsDelegates: [
            appLocalizationDelegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: appLocalizationDelegate.supportedLocales,
          locale: Locale(_locale),
          themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          onGenerateRoute: AppRouter.generateRoute,
          title: 'LetTutor',
          debugShowCheckedModeBanner: false,
          home: const SignInForm(),
        ),
      ),
    );
  }
}