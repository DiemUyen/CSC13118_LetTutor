import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
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
                    minHeight: constraints.minHeight
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          // Logo app
                          Container(
                              padding: const EdgeInsets.all(16),
                              child: Placeholder(
                                fallbackWidth: baseLogoWidth,
                                fallbackHeight: baseLogoWidth,
                              )
                          ),

                          // Sign in with Facebook or Google
                          Container(
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

                          // Divider
                          Container(
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
                    ),

                    const SizedBox(height: 15,),

                    // Sign in with email and password
                    Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black12),
                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                            ),
                            padding: const EdgeInsets.only(
                                left: 24, top: 0, right: 24, bottom: 24),
                            child: Column(
                              children: [
                                // Email
                                TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Email",
                                  ),
                                ),

                                // Password
                                TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      hintText: "Password"
                                  ),
                                )
                              ],
                            ),
                          ),

                          // Button 'Sign in'
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, RouteGenerator.tutorHomePage);
                              },
                              child: const Text("Sign In")
                          ),

                          // Button 'Forgot password'
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, RouteGenerator.forgotPasswordPage);
                              },
                              child: const Text("Forgot Password?")
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 20,),

                    // Button 'Sign up'
                    Container(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RouteGenerator.signUpPage);
                          },
                          child: const Text("Don't have an account? Sign Up")
                      ),
                    ),

                    const SizedBox(height: 20,)
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}