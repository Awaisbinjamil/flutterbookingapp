import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class Feature extends StatelessWidget {
  const Feature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 219,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/map.png',
                    height: 219,
                    fit: BoxFit.fill,
                    width: Get.width,
                  ),
                  Positioned(
                    bottom: 30,
                    left: 20,
                    child: Image.asset('assets/images/map_location_pin.png',
                        height: 61),
                  ),
                ],
              ),
            ),
            MyText(
              paddingTop: 15.0,
              text: 'Property features',
              size: 16,
              weight: FontWeight.w500,
              color: kBlackColor2,
            ),
          ],
        ),
        const Contact(),
      ],
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 100,
        padding: const EdgeInsets.only(bottom: 15,left: 15),
        color: kPrimaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: MyButton(
                    onPressed: () {},
                    height: 36,
                    textColor: kBlackColor2,
                    text: 'Send Enquiry',
                    textSize: 12,
                    weight: FontWeight.w600,
                    btnBgColor: kSecondaryColor.withOpacity(0.20),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 4,
                  child: MyButton(
                    onPressed: () {},
                    height: 36,
                    textColor: kPrimaryColor,
                    text: 'Call Agent',
                    textSize: 12,
                    weight: FontWeight.w600,
                    btnBgColor: kSecondaryColor,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/share.png',
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
