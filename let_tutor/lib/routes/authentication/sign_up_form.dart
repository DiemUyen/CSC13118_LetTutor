import 'package:flutter/material.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/widgets/bottom_nav_bar.dart';

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
          return Scaffold(
            bottomNavigationBar: BottomNavBar(),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    // Logo app
                    Container(
                        padding: const EdgeInsets.all(16),
                        child: Placeholder(
                          fallbackWidth: baseLogoWidth,
                          fallbackHeight: baseLogoWidth,
                        )
                    ),

                    // Sign up with Facebook or Google
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

                const SizedBox(height: 15,),

                Column(
                  children: [
                    // Sign up with Email and password
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

                    // Button 'Sign up'
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("Sign Up")
                    )
                  ],
                ),

                const SizedBox(height: 20,),

                // Button 'Sign in'
                Container(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteGenerator.signInPage);
                      },
                      child: const Text("Have an account? Sign In")
                  ),
                ),

                const SizedBox(height: 20,)
              ],
            ),
          );
        }
    );
  }
}
