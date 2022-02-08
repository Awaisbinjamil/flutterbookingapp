import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/calculate_property/borrow.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/custom_radio_tiles.dart';
import 'package:rchive/view/widget/my_appbar.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class CalculateCollection extends StatelessWidget {
  const CalculateCollection({Key? key}) : super(key: key);

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
                  text: 'How do you want to calculate?',
                  size: 18,
                  weight: FontWeight.w600,
                  color: kBlackColor2,
                ),
                const SizedBox(
                  height: 30,
                ),
                customRadioTile('Use property', 0),
                const SizedBox(
                  height: 10,
                ),
                customRadioTile('Input data', 1),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                MyButton(
                  text: 'Next',
                  onPressed: () {
                    logic.currentIndex == 0 ? Get.to(() => const Borrow()) : () {};
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
