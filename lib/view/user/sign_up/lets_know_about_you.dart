import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/add_property/add_property.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/user/sign_up/buy_or_rent.dart';
import 'package:rchive/view/widget/custom_radio_tiles.dart';
import 'package:rchive/view/widget/my_appbar.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class LetsKnowAboutYou extends StatelessWidget {
  const LetsKnowAboutYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomRadioTileController>(
      init: CustomRadioTileController(),
      builder: (logic) {
        return Scaffold(
          appBar: MyAppBar(),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyText(
                  text: 'Let’s get to now a bit about you',
                  size: 18,
                  weight: FontWeight.w600,
                  color: kBlackColor2,
                ),
                const SizedBox(
                  height: 30,
                ),
                customRadioTile('I own a property', 0),
                const SizedBox(
                  height: 10,
                ),
                customRadioTile('I do not own a property', 1),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                MyButton(
                  text: 'Next',
                  onPressed: () {
                    logic.currentIndex == 0
                        ? Get.to(() => const AddProperty())
                        : Get.to(() => const BuyOrRent());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
