import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  var dark = false;

  Widget darkThemeSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Dark theme'),
        Switch(
          value: dark,
          onChanged: (bool value) {
            setState(() {
              dark = !dark;
            });
          },
        )
      ],
    );
  }

  Widget languageSwitcher() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Language'),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/united-kingdom.png'),
            radius: 20
          ),
        )
      ],
    );
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
              darkThemeSwitch(),

              const Divider(),

              // Language
              languageSwitcher()
            ],
          ),
        ),
      ),
    );
  }
}
