import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/brand_name_card.dart';
import '../components/girl_image_card.dart';
import '../components/shoe_card.dart';
import '../font_style.dart';
import '../utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.search,
                  color: Colors.black54,
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for products brands and more",
                        hintStyle: xsTExt),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Green Summer",
                    style: h2Text,
                  ),
                ],
              ),
              const AddVerticalGap(),
              SizedBox(
                height: 180,
                width: double.infinity,
                // color: Colors.red,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    GirlImageCard(
                      imageUrl: "assets/images/Bitmap-8.png",
                    ),
                    GirlImageCard(
                      imageUrl: "assets/images/Bitmap.png",
                    ),
                    GirlImageCard(
                      imageUrl: "assets/images/Bitmap-5.png",
                    ),
                    GirlImageCard(
                      imageUrl: "assets/images/Bitmap-7.png",
                    ),
                    GirlImageCard(
                      imageUrl: "assets/images/Bitmap-6.png",
                    ),
                    GirlImageCard(
                      imageUrl: "assets/images/Bitmap-7.png",
                    ),
                  ],
                ),
              ),
              const AddVerticalGap(),
              const AddVerticalGap(),
              SizedBox(
                height: 130,
                width: double.infinity,
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 2 / 1.2),
                  children: const [
                    BrandNameCard(
                      brandName: "Dior",
                    ),
                    BrandNameCard(
                      brandName: "PRADA",
                    ),
                    BrandNameCard(
                      brandName: "CELINE",
                    ),
                    BrandNameCard(
                      brandName: "GUCCI",
                    ),
                    BrandNameCard(
                      brandName: "Chloe",
                    ),
                    BrandNameCard(
                      brandName: "BVLGARI",
                    ),
                  ],
                ),
              ),
              const AddVerticalGap(),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  children: const [
                    ShoeCard(
                      imageUrl: "assets/images/Bitmap-1.png",
                    ),
                    ShoeCard(
                      imageUrl: "assets/images/Bitmap-3.png",
                    ),
                    ShoeCard(
                      imageUrl: "assets/images/Bitmap-2.png",
                    ),
                    ShoeCard(
                      imageUrl: "assets/images/Bitmap-4.png",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
