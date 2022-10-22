import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:let_tutor/routes.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {

  Widget logoApp(BuildContext context, double size) {
    return SizedBox(
      height: size,
      width: size,
      child: Placeholder(
        fallbackWidth: size,
        fallbackHeight: size,
      ),
    );
  }

  Widget thirdPartySignIn(BuildContext context, IconData iconName, String label) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(iconName, size: 16,),
          label: Text(label),
        ),
      ),
    );
  }

  Widget emailField(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Email",
      ),
    );
  }

  Widget passwordField(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Password"
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
            //TODO: insert logo app
            builder: (context, constraints) {
              var baseLogoWidth = 100.0;

              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: constraints.maxHeight
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          // Logo app
                          logoApp(context, 100),
                          const SizedBox(height: 32,),

                          // Sign in with Facebook or Google
                          Row(
                            children: [
                              const Expanded(child: SizedBox(width: 16,)),
                              thirdPartySignIn(context, FontAwesomeIcons.facebookF, 'Facebook'),
                              const Expanded(child: SizedBox(width: 16,)),
                              thirdPartySignIn(context, FontAwesomeIcons.google, 'Google'),
                              const Expanded(child: SizedBox(width: 16,)),
                            ],
                          ),

                          const SizedBox(height: 16,),

                          // Divider
                          Row(
                            children: const [
                              Expanded(child: Divider(thickness: 0.5,)),
                              SizedBox(width: 8,),
                              Text("or"),
                              SizedBox(width: 8,),
                              Expanded(child: Divider(thickness: 0.5,))
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16,),

                      // Sign in with email and password
                      Column(
                        children: [
                          Column(
                            children: [
                              // Email
                              emailField(context),
                              const SizedBox(height: 8,),
                              // Password
                              passwordField(context)
                            ],
                          ),

                          const SizedBox(height: 8,),

                          // Button 'Sign in'
                          ElevatedButton(
                              onPressed: () {
                                //Navigator.pushNamed(context, RouteGenerator.homePage);
                                Navigator.pushNamedAndRemoveUntil(context, RouteGenerator.homePage, (route) => false);
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

                      const SizedBox(height: 32,),

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

                      const SizedBox(height: 40,)
                    ],
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}