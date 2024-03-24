import 'package:eshopdruic/product_detail.dart';
import 'package:eshopdruic/shop_home_page.dart';
import 'package:flutter/material.dart';

class SellingItem extends StatelessWidget {
  const SellingItem(this.itemName, this.itemPhoto, this.itemWeight, this.price,
      {super.key});
  final String itemName;
  final String itemPhoto;
  final String itemWeight;
  final double price;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => ProductDetailPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: EdgeInsets.only(left: 16, right: 16),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(4, 4),
                blurRadius: 10,
              ),
              BoxShadow(
                  color: Colors.black12, offset: Offset(-4, -4), blurRadius: 5)
            ],
            color: shopCardColor,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Column(
          children: [
            Image(
              image: AssetImage(itemPhoto),
              height: _height * 0.11,
              width: width * 0.23,
            ),
            Text(
              itemName,
              style: const TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.8,
                  color: greenPrimaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemWeight,
                      style: const TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 18,
                          color: Colors.blueGrey,
                          letterSpacing: 1.5),
                    ),
                    Text(
                      "\$ $price",
                      style: TextStyle(
                          color: greenPrimaryColor.withBlue(200),
                          fontFamily: "Raleway",
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.all(Radius.circular(1999)),
                  ),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 32,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
