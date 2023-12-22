import 'package:flutter/material.dart';

import '../font_style.dart';

class FacebookLoginButton extends StatelessWidget {
  const FacebookLoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black),
          onPressed: () {},
          icon: const Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 25,
          ),
          label: Text(
            "Sign Up With Facebook",
            style: defaultText,
          )),
    );
  }
}
