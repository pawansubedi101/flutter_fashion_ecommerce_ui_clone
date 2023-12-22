import 'package:flutter/material.dart';

class ShoeCard extends StatelessWidget {
  const ShoeCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
