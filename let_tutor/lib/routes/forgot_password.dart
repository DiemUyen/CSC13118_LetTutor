import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.only( left: 16, top: 0, right: 16, bottom: 0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Reset Password", style: TextStyle(fontSize: 24),),
                  const SizedBox(height: 8,),
                  const Text("Please enter your email address to search for your account.", textAlign: TextAlign.center,),
                  const SizedBox(height: 24,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    padding: const EdgeInsets.only(left: 24, top: 0, right: 24, bottom: 24),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Email"
                      ),
                    ),
                  ),
                  const SizedBox(height: 8,),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text("Send Link")
                  )
                ],
              ),
            ),
          );
        });
  }
}
