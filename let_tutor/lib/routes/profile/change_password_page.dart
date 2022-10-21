import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth/2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Change Password', style: Theme.of(context).textTheme.headline6,),
              const SizedBox(height: 16,),

              // Old password
              Row(
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
              ),

              const SizedBox(height: 16,),

              // New password
              Row(
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
              ),

              const SizedBox(height: 16,),

              // Confirm new password
              Row(
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
              ),

              const SizedBox(height: 16,),

              // Button 'Save password'
              ElevatedButton(
                child: const Text('Change Password'),
                onPressed: () { },
              )
            ],
          ),
        );
      }),
    );
  }
}
