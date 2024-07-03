import 'package:christmas_gift_app_ui/utils.dart';
import 'package:flutter/material.dart';

class GiftCategoryItem extends StatelessWidget {
  final String categoryName;
  final String imagePath;

  const GiftCategoryItem({super.key, required this.categoryName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Container(
          width: 200,
          height: 100,
          color: Utils.getColorFromHex("#2fa25d"),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  child: Text(
                    categoryName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                    height: 150,
                  child: Image.asset(
                    imagePath,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}