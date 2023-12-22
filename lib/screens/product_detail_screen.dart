import 'package:fashion_ecommerce_ui_clone/constants.dart';
import 'package:fashion_ecommerce_ui_clone/font_style.dart';
import 'package:fashion_ecommerce_ui_clone/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 244, 244),
        automaticallyImplyLeading: false,
        title: const BackButton(
          color: Colors.black,
        ),
      ),
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(12),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const AddVerticalGap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Makayla Gown",
                      style: h2Text.copyWith(
                        color: kPrimaryColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "✦✦✦✦",
                          style: h4Text.copyWith(
                              color: kPrimaryColor, height: 0.7),
                        ),
                        const AddHorizonTalGap(),
                        Text(
                          "83 Reviews",
                          style: xsTExt.copyWith(color: kPrimaryColor),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$949.00",
                      style: h4Text.copyWith(color: kPrimaryColor),
                    ),
                    Text(
                      "\$759.00",
                      style: h2Text.copyWith(
                        color: kPrimaryColor,
                      ),
                    ),
                    Text(
                      "All Prices Include VAT",
                      style: xsTExt.copyWith(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
            const AddVerticalGap(),
            const AddVerticalGap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Chip(
                        backgroundColor: Colors.grey.shade200,
                        avatar: const RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.chevron_left_outlined,
                              size: 16,
                            )),
                        label: Text(
                          "Size",
                          style: smTExt,
                        )),
                    const AddHorizonTalGap(),
                    Chip(
                        backgroundColor: Colors.grey.shade200,
                        avatar: const RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.chevron_left_outlined,
                              size: 16,
                            )),
                        label: Text(
                          "Color",
                          style: smTExt,
                        )),
                  ],
                ),
                Text(
                  "Size Chart",
                  style: xsTExt,
                ),
              ],
            ),
            const AddVerticalGap(),
            const AddVerticalGap(),
            const Text(
              "The Makayla in non-strech Mikado is a vision in Flamingo pink and raspberry. The dress is designed for a grand entrance and surprising exit with the panel at back revealing a secondary, striking shade of pink.",
              maxLines: 4,
              textAlign: TextAlign.justify,
            ),
          ]),
      bottomNavigationBar: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: const Icon(
                  CupertinoIcons.chat_bubble_text,
                  color: Colors.black54,
                ),
              ),
              const AddHorizonTalGap(),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: const Icon(
                  CupertinoIcons.share,
                  color: Colors.black54,
                ),
              ),
              const AddHorizonTalGap(),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.black54,
                ),
              ),
              const AddHorizonTalGap(),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Add To Bag",
                          style: defaultText,
                        ),
                        const AddHorizonTalGap(),
                        const Icon(
                          Icons.shopping_cart,
                          size: 18,
                        )
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
