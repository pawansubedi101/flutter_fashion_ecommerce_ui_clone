import 'package:flutter/material.dart';

import '../font_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.label,
    required this.onpress,
    required this.backgroundColor,
  }) : super(key: key);

  final String label;
  final VoidCallback onpress;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: backgroundColor),
            onPressed: onpress,
            child: Text(
              label,
              style: defaultText,
            )));
  }
}
