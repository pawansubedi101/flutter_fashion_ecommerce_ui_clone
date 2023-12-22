import 'package:flutter/material.dart';

import '../font_style.dart';

class BrandNameCard extends StatelessWidget {
  const BrandNameCard({
    Key? key,
    required this.brandName,
  }) : super(key: key);

  final String brandName;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
      child: Center(
          child: Text(
        brandName,
        style: h4Text,
      )),
    );
  }
}
