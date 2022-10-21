import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  var dark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Dark theme
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Dark theme'),
                Switch(
                  value: dark,
                  activeColor: Colors.blueAccent[100],
                  onChanged: (bool value) {
                    setState(() {
                      dark = !dark;
                    });
                  },
                )
              ],
            ),
            const Divider(),

            // Language
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Language'),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.brown,
                    radius: 12,
                    child: Text('Eng', style: TextStyle(fontSize: 8),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
