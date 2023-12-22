import 'package:fashion_ecommerce_ui_clone/screens/product_detail_screen.dart';
import 'package:fashion_ecommerce_ui_clone/utils.dart';
import 'package:flutter/material.dart';

class GirlImageCard extends StatelessWidget {
  const GirlImageCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goToNextScreen(
            context,
            ProductDetailScreen(
              imageUrl: imageUrl,
            ));
      },
      child: Container(
        height: 170,
        width: 85,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              15,
            )),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
