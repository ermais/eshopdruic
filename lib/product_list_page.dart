import 'package:eshopdruic/components/popular_recipe_item.dart';
import 'package:eshopdruic/components/selling_item.dart';
import 'package:eshopdruic/components/shop_category_item.dart';
import 'package:eshopdruic/data.dart';
import 'package:eshopdruic/paint.dart';
import 'package:eshopdruic/shop_home_page.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 160,
              child: CustomPaint(
                painter: AppBarCustomPaint(),
                child: const Padding(
                  padding: EdgeInsets.only(left: 32, top: 64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //location info goes here
                      Row(
                        children: [
                          Icon(
                            Icons.location_history,
                            size: 48,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Stockholm, UK",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Raleway",
                                  letterSpacing: 2,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(200)),
                          child: Image(
                            image: AssetImage("images/img/person-1.jpg"),
                            width: 72,
                            height: 72,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 24, right: 16, top: 32, bottom: 32),
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(4, 4),
                        blurRadius: 10)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: const TextField(
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 16, top: 16, bottom: 16),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.black38,
                    ),
                    enabled: true,
                    hintText: "Search Product",
                    hintStyle: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 24,
                        color: Colors.black38,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24.0, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Categories",
                        style: TextStyle(
                            color: greenPrimaryColor,
                            fontSize: 24,
                            fontFamily: "Raleway",
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: textLinkColor,
                            fontSize: 20,
                            fontFamily: "Raleway",
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 94,
                  child: ListView.builder(
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> category = categories[index];
                        return ShopCategoryItem(
                            category["categoryName"],
                            category["iconAsset"],
                            index,
                            _selectedIndex,
                            (selectedIndex) {});
                      }),
                ),
                SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 24.0, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best Selling",
                        style: TextStyle(
                            color: greenPrimaryColor,
                            fontSize: 24,
                            fontFamily: "Raleway",
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: textLinkColor,
                            fontSize: 20,
                            fontFamily: "Raleway",
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: height * 0.27,
                    child: ListView.builder(
                        itemCount: sellingItems.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          Map<String, dynamic> sellingItem =
                              sellingItems[index];
                          return SellingItem(
                              sellingItem["itemName"],
                              sellingItem["itemPhoto"],
                              sellingItem["itemWeight"],
                              sellingItem["price"]);
                        })),
                const Padding(
                  padding: EdgeInsets.only(left: 24.0, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Recipes",
                        style: TextStyle(
                            color: greenPrimaryColor,
                            fontSize: 24,
                            fontFamily: "Raleway",
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: textLinkColor,
                            fontSize: 20,
                            fontFamily: "Raleway",
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: 260,
                    child: ListView.builder(
                        itemCount: popularRecipes.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          Map<String, dynamic> popularItem =
                              popularRecipes[index];
                          return PopularRecipeItem(
                              itemName: popularItem["itemName"],
                              itemPhoto: popularItem["itemPhoto"],
                              itemOrigin: popularItem["itemOrigin"]);
                        }))
              ],
            ),
          ],
        ),
      ],
    );
  }
}
