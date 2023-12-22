import 'package:flutter/material.dart';

import '../font_style.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: TextField(
            controller: controller,
            decoration: InputDecoration(
                hintStyle: smTExt,
                hintText: hintText,
                border: InputBorder.none)),
      ),
    );
  }
}
