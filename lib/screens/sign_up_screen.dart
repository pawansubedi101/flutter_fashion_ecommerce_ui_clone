import 'package:fashion_ecommerce_ui_clone/font_style.dart';
import 'package:fashion_ecommerce_ui_clone/screens/home_screen.dart';
import 'package:fashion_ecommerce_ui_clone/screens/sign_in_screen.dart';
import 'package:fashion_ecommerce_ui_clone/utils.dart';
import 'package:flutter/material.dart';

import '../components/custom_elevated_button.dart';
import '../components/custom_text_field.dart';
import '../components/facebook_login_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 244, 244),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AddVerticalGap(),
              Text(
                "Sign Up",
                style: h1Text,
              ),
              Text(
                "Create an account",
                style: smTExt,
              ),
              const AddVerticalGap(),
              const AddVerticalGap(),
              CustomTextfield(
                  controller: emailcontroller,
                  hintText: "Mobile Number or Email"),
              const AddVerticalGap(),
              CustomTextfield(
                  controller: emailcontroller, hintText: "Full Name"),
              const AddVerticalGap(),
              CustomTextfield(
                  controller: emailcontroller, hintText: "Password"),
              const AddVerticalGap(),
              const AddVerticalGap(),
              Text(
                "By continuing, you confirm that you have read and agreed to our Terms and Conditions and Privacy Policy.",
                style: xsTExt,
              ),
              const Divider(),
              const AddVerticalGap(),
              CustomElevatedButton(
                backgroundColor: const Color.fromARGB(255, 185, 93, 87),
                label: "Sign Up",
                onpress: () {
                  goToNextScreen(context, const HomeScreen());
                },
              ),
              const AddVerticalGap(),
              const AddVerticalGap(),
              const FacebookLoginButton(),
              const AddVerticalGap(),
              const AddVerticalGap(),
              const AddVerticalGap(),
              Center(
                child: Text(
                  "Already have an account?",
                  style: xsTExt,
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      goToNextScreen(context, const SignInScreen());
                    },
                    child: Text(
                      "Sign In",
                      style: defaultText,
                    )),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
