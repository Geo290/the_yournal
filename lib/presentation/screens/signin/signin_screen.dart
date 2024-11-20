import 'package:flutter/material.dart';
import 'package:yournal/config/styles/yournal_text_styles.dart';
import 'package:yournal/presentation/screens/signup/personal_info_screen.dart';
import 'package:yournal/presentation/widgets/shared/yournal_appbar.dart';
import 'package:yournal/presentation/widgets/shared/yournal_container.dart';
import 'package:yournal/presentation/widgets/shared/yournal_text_field.dart';
import 'package:yournal/presentation/widgets/shared/yournal_submit_button.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return YournalContainer(
      appBar: const YournalAppbar(),
      child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  const SizedBox(height: 50),
                  // Logo
                  Image.asset(
                    'assets/images/yournal_icon_white.png',
                    height: 75,
                    width: 75,
                  ),
                  // Welcome text
                  const SizedBox(height: 50),
                  Center(
                    child: Text(
                      "Sign in to Yournal",
                      style: YournalTextStyles.titleStyle(),
                    ),
                  ),
                  const SizedBox(height: 50),
                  // Email field
                  YournalTextField(
                    labelText: "Email",
                    hintText: "email@mail.com",
                    inputType: TextInputType.emailAddress,
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      if (!RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(value)) {
                        return 'Email address is not valid';
                      }
                      return "";
                    },
                  ),
                  const SizedBox(height: 30),
                  // Password field
                  YournalTextField(
                    labelText: "Password",
                    hintText: "************",
                    inputType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      return "";
                    },
                  ),
                  const SizedBox(height: 100),
                  // Submit button
                  YournalSubmitButton(
                    text: "Next",
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // print(_passwordController.text);
                      }
                    },
                  ),
                  const SizedBox(height: 30),
                  // Signup option
                  Center(
                    child: InkWell(
                      child: const Text(
                        // change for a button
                        "New at Yournal? Sign Up",
                        style: TextStyle(color: Colors.white60),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute( builder: (builder) => const PersonalInfoScreen())
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Center(
                    child: Text(
                      // change for a button
                      "Forgot password?",
                      style: TextStyle(color: Colors.white60),
                    ),
                  )
                  // Forgot password option
                ],
              ),
            ),
          )),
    );
  }
}
