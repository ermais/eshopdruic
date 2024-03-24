import 'package:eshopdruic/product_list_page.dart';
import 'package:flutter/material.dart';

const Color greenPrimaryColor = Color.fromRGBO(19, 86, 95, 1);
const Color accentColor = Color.fromRGBO(242, 201, 76, 1);
const Color shopBackgroundColor = Color.fromRGBO(253, 254, 252, 1);
const Color shopDetailBackgroundColor = Color.fromRGBO(253, 238, 231, 1);
const shopCardColor = Color.fromRGBO(252, 254, 251, 1);
const Color textLinkColor = Color.fromRGBO(224, 183, 194, 1);

class ShopHomePage extends StatelessWidget {
  const ShopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: shopBackgroundColor, body: ProductListPage());
  }
}
