import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/compare/compare.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/investment_portal/add_collection/calculate_collection.dart';
import 'package:rchive/view/widget/custom_radio_tiles.dart';
import 'package:rchive/view/widget/my_appbar.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class CollectionType extends StatelessWidget {
  const CollectionType({Key? key}) : super(key: key);

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
                  text: 'When type of collection will this be?',
                  size: 18,
                  weight: FontWeight.w600,
                  color: kBlackColor2,
                ),
                const SizedBox(
                  height: 30,
                ),
                customRadioTile('Comparison', 0),
                const SizedBox(
                  height: 10,
                ),
                customRadioTile('Calculator', 1),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                MyButton(
                  text: 'Next',
                  onPressed: () {
                    logic.currentIndex == 0
                        ? Get.to(() => const Compare())
                        : Get.to(() => const CalculateCollection());
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
