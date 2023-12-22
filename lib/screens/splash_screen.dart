import 'package:fashion_ecommerce_ui_clone/screens/sign_up_screen.dart';
import 'package:fashion_ecommerce_ui_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    replaceScreen(context, const SignUpScreen());
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Image.asset('assets/images/Oval-3.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              Text("Fia",
                  style: GoogleFonts.aladin(color: Colors.red, fontSize: 30))
            ],
          ),
          Image.asset('assets/images/Oval-4.png'),
        ],
      ),
    ));
  }
}
