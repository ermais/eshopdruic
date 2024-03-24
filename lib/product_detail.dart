import 'package:eshopdruic/shop_home_page.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shopDetailBackgroundColor,
      body: Container(
        margin: const EdgeInsets.only(top: 32),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: greenPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    "Detail",
                    style: TextStyle(
                        color: greenPrimaryColor,
                        fontSize: 24,
                        letterSpacing: 2,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: greenPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: const Icon(
                      Icons.more_horiz,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 6,
                child: Container(
                  margin: const EdgeInsets.all(16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: shopDetailBackgroundColor.withAlpha(155),
                        offset: const Offset(-2, 2),
                        blurRadius: 10)
                  ], borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image(
                        image: AssetImage("images/img/potato-chips.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )),
            Flexible(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Potato Chips",
                              style: TextStyle(
                                  color: greenPrimaryColor,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: "Raleway",
                                  letterSpacing: 1.7),
                            ),
                            Text(
                              "* * * * * ",
                              style: TextStyle(
                                  color: accentColor,
                                  fontFamily: "Raleway",
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Original Flavour ",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontFamily: "Raleway",
                                  fontSize: 24),
                            ),
                            Text(
                              "170 gm",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 22,
                                  fontFamily: "Raleway",
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 4, right: 8),
                    child: Text("Description",
                        style: TextStyle(
                          color: greenPrimaryColor,
                          fontFamily: "Raleway",
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.9,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
                    child: Text(
                      "The basic chips are cooked and salted; additional varities are manufactured and using various flavorings and ingredients including herbs, spices, chesses, other natural flavors, artifical flavors, and additives.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          height: 1.5,
                          color: accentColor.withGreen(155),
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          letterSpacing: 1.5,
                          leadingDistribution:
                              TextLeadingDistribution.proportional),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: const Icon(
                            Icons.remove,
                            size: 32,
                            color: greenPrimaryColor,
                          ),
                        ),
                        const Text(
                          "1",
                          style: TextStyle(
                              color: greenPrimaryColor,
                              fontSize: 32,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: const Icon(
                            Icons.add,
                            size: 32,
                            color: greenPrimaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 32, right: 32),
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white12,
                              offset: Offset(4, 4),
                              blurRadius: 8),
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(-1, -1),
                              blurRadius: 3)
                        ],
                        color: greenPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Added to cart",
                          style: TextStyle(
                              color: accentColor,
                              fontFamily: "Raleway",
                              fontSize: 28,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.shopping_basket,
                          size: 48,
                          color: accentColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
