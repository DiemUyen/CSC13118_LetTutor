import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Title Reset password
                      const Text("Reset Password", style: TextStyle(fontSize: 24),),
                      const SizedBox(height: 8,),

                      // Title Enter your email address
                      const Text("Please enter your email address to search for your account.", textAlign: TextAlign.center,),
                      const SizedBox(height: 24,),

                      // Text field to enter email address
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email"
                        ),
                      ),

                      const SizedBox(height: 8,),

                      // Button 'Send link'
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RouteGenerator.signInPage);
                          },
                          child: const Text("Send Link")
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
