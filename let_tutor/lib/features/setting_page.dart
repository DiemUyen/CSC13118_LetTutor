import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:let_tutor/features/application/bloc/application_bloc.dart';

import '../generated/l10n.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late final ApplicationBloc _bloc;

  @override
  void initState() {
    _bloc = BlocProvider.of<ApplicationBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // Dark theme
              BlocBuilder<ApplicationBloc, ApplicationState>(
                bloc: _bloc,
                builder: (context, state) {
                  return SwitchListTile(
                    value: state.isDarkMode,
                    onChanged: (value) {
                      _bloc.add(
                        ApplicationDarkModeChanged(enable: value),
                      );
                    },
                    title: Text(
                      S.current.dark_mode,
                    ),
                  );
                },
              ),

              const Divider(),

              // Language
              BlocBuilder<ApplicationBloc, ApplicationState>(
                bloc: _bloc,
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          S.current.app_language,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      RadioListTile<String>(
                        value: 'en',
                        groupValue: state.locale,
                        onChanged: (value) {
                          _bloc.add(
                            const ApplicationLocaleChanged(locale: 'en'),
                          );
                        },
                        title: Text(
                          S.current.english,
                        ),
                      ),
                      RadioListTile<String>(
                        value: 'vi',
                        groupValue: state.locale,
                        onChanged: (value) {
                          _bloc.add(
                            const ApplicationLocaleChanged(locale: 'vi'),
                          );
                        },
                        title: Text(
                          S.current.vietnamese,
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
