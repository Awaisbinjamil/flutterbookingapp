import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/home/property_details.dart';
import 'my_text.dart';

// ignore: must_be_immutable
class PostCards extends StatelessWidget {
  PostCards({
    Key? key,
    this.propertyImage,
    this.name,
    this.price,
  }) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  var propertyImage, name, price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const PropertyDetail()),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7),
        width: 200,
        height: 182,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kBorderColor,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  '$propertyImage',
                  fit: BoxFit.cover,
                  width: Get.width,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/location.png',
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyText(
                          text: '$name',
                          size: 12,
                          color: const Color(0xff030919),
                        ),
                        MyText(
                          text: '\$$price',
                          size: 12,
                          weight: FontWeight.w600,
                          color: kSecondaryColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
