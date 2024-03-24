import 'package:eshopdruic/shop_home_page.dart';
import 'package:flutter/material.dart';

class PopularRecipeItem extends StatelessWidget {
  const PopularRecipeItem(
      {required this.itemName,
      required this.itemPhoto,
      required this.itemOrigin,
      super.key});

  final String itemName;
  final String itemPhoto;
  final String itemOrigin;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: shopBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Container(
              width: width * 0.45,
              height: 140,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image(
                  image: AssetImage(itemPhoto),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              itemName,
              style: const TextStyle(
                color: greenPrimaryColor,
                fontFamily: "Raleway",
                fontSize: 24,
                letterSpacing: 1.8,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            itemOrigin,
            style: TextStyle(
                color: greenPrimaryColor.withOpacity(0.78),
                fontFamily: "Raleway",
                fontWeight: FontWeight.w400,
                letterSpacing: 1.9,
                fontSize: 20),
          )
        ],
      ),
    );
  }
}
