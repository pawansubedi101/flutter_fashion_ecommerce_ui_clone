import 'package:fashion_ecommerce_ui_clone/font_style.dart';
import 'package:fashion_ecommerce_ui_clone/screens/sign_up_screen.dart';
import 'package:fashion_ecommerce_ui_clone/utils.dart';
import 'package:flutter/material.dart';

import '../components/custom_elevated_button.dart';
import '../components/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  BackButton(),
                ],
              ),
              Text(
                "Sign In",
                style: h1Text,
              ),
              const AddVerticalGap(),
              const AddVerticalGap(),
              CustomTextfield(
                  controller: emailcontroller, hintText: "James@gmail.com"),
              const AddVerticalGap(),
              CustomTextfield(
                  controller: emailcontroller, hintText: "*********"),
              const AddVerticalGap(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: xsTExt.copyWith(color: Colors.black),
                      )),
                ],
              ),
              const AddVerticalGap(),
              const AddVerticalGap(),
              const Divider(),
              const AddVerticalGap(),
              const AddVerticalGap(),
              CustomElevatedButton(
                backgroundColor: const Color.fromARGB(255, 185, 93, 87),
                label: "Sign In",
                onpress: () {},
              ),
              const AddVerticalGap(),
              const AddVerticalGap(),
              const AddVerticalGap(),
              const Center(child: Text("Don't have an account?")),
              Center(
                child: TextButton(
                    onPressed: () {
                      goToNextScreen(context, const SignUpScreen());
                    },
                    child: Text(
                      "Sign Up Now",
                      style: smTExt,
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
