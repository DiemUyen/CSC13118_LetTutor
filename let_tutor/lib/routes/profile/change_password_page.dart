import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {

  Widget oldPasswordField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          flex: 1,
          child: Text('Old Password', textAlign: TextAlign.end,),
        ),
        const SizedBox(width: 8,),
        Expanded(
          flex: 2,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
              ),
              hintText: '',
            ),
          ),
        ),
      ],
    );
  }

  Widget newPasswordField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
            flex: 1,
            child: Text('New Password', textAlign: TextAlign.end,)
        ),
        const SizedBox(width: 8,),
        Expanded(
          flex: 2,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                hintText: ''
            ),
          ),
        ),
      ],
    );
  }

  Widget confirmNewPasswordField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          flex: 1,
          child: Text('Confirm New Password', textAlign: TextAlign.end,),
        ),
        const SizedBox(width: 8,),
        Expanded(
          flex: 2,
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
                hintText: ''
            ),
          ),
        ),
      ],
    );
  }

  Widget changePasswordButton() {
    return ElevatedButton(
      child: const Text('Change'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Change Password', style: Theme.of(context).textTheme.headline6,),
                const SizedBox(height: 16,),

                // Old password
                oldPasswordField(),
                const SizedBox(height: 16,),

                // New password
                newPasswordField(),
                const SizedBox(height: 16,),

                // Confirm new password
                confirmNewPasswordField(),
                const SizedBox(height: 16,),

                // Button 'Save password'
                changePasswordButton()
              ],
            ),
          );
        }),
      ),
    );
  }
}
