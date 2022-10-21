import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:let_tutor/routes.dart';
import 'package:let_tutor/theme/app_color.dart';
import 'package:let_tutor/widgets/bottom_nav_bar.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

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
  
  Widget thirdPartySignUp(BuildContext context, IconData iconName, String label) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.lineColor, width: 0.5),
            borderRadius: BorderRadius.circular(4)
        ),
        child: TextButton.icon(
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
                          const SizedBox(height: 32),

                          // Sign up with Facebook or Google
                          Row(
                            children: [
                              const Expanded(child: SizedBox(width: 16,)),
                              thirdPartySignUp(context, FontAwesomeIcons.facebookF, 'Facebook'),
                              const Expanded(child: SizedBox(width: 16,)),
                              thirdPartySignUp(context, FontAwesomeIcons.google, 'Google'),
                              const Expanded(child: SizedBox(width: 16,)),
                            ],
                          ),
                          const SizedBox(height: 16,),

                          // Divider
                          Row(
                            children: const [
                              Expanded(child: Divider(color: AppColor.lineColor, thickness: 0.5,)),
                              SizedBox(width: 8,),
                              Text("or"),
                              SizedBox(width: 8,),
                              Expanded(child: Divider(color: AppColor.lineColor, thickness: 0.5,))
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 16,),

                      Column(
                        children: [
                          // Sign up with Email and password
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

                          // Button 'Sign up'
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, RouteGenerator.signInPage);
                              },
                              child: const Text("Sign Up")
                          )
                        ],
                      ),

                      const SizedBox(height: 80,),

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
