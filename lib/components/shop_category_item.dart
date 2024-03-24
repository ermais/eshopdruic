import 'package:eshopdruic/shop_home_page.dart';
import 'package:flutter/material.dart';

typedef TapItem = void Function(int selectedIndex);

class ShopCategoryItem extends StatelessWidget {
  const ShopCategoryItem(this.itemName, this.categoryIcon, this.index,
      this.selectedIndex, this.onTap,
      {super.key});
  final String itemName;
  final String categoryIcon;
  final int index;
  final int selectedIndex;
  final TapItem onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: Container(
        height: 70,
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.only(right: 20, left: 20),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.white70, offset: Offset(4, 4), blurRadius: 10)
          ],
          // boxShadow: [
          //   BoxShadow(
          //     color: selectedColor,
          //     blurRadius: 4,
          //   )
          // ],
          color: (index == selectedIndex) ? greenPrimaryColor : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          // border: Border.all(
          //     color: greenPrimaryColor, style: BorderStyle.solid, width: 2)
        ),
        child: Center(
          child: Row(
            children: [
              Image(
                image: AssetImage(categoryIcon),
                width: 48,
                height: 48,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                itemName,
                style: TextStyle(
                    fontFamily: "Raleway",
                    color: (index == selectedIndex)
                        ? Colors.white
                        : greenPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
