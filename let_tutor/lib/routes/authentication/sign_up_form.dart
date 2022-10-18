import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        //TODO: insert logo app
        builder: (context, constraints) {
          var baseLogoWidth = 100.0;

          if (constraints.maxWidth >= baseLogoWidth) {
            baseLogoWidth = constraints.maxWidth / 2.0;
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16, top: 0, right: 16, bottom: 0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                          padding: const EdgeInsets.all(16),
                          child: Placeholder(
                            fallbackWidth: baseLogoWidth,
                            fallbackHeight: baseLogoWidth,
                          )
                      ),
                      Container(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.facebook),
                                label: const Text("Facebook")
                            ),
                            ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(Icons.abc),
                                label: const Text("Google")
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        child: Row(
                          children: const [
                            Expanded(child: Divider(color: Colors.black12, thickness: 1,)),
                            SizedBox(width: 8,),
                            Text("or"),
                            SizedBox(width: 8,),
                            Expanded(child: Divider(color: Colors.black12, thickness: 1,))
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black12),
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                        padding: const EdgeInsets.only(
                            left: 24, top: 0, right: 24, bottom: 24),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Email",
                              ),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  hintText: "Password"
                              ),
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text("Sign Up")
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Have an account? Sign In")
                    ),
                  ),
                  const SizedBox(height: 20,)
                ],
              ),
            ),
          );
        }
    );
  }
}
