import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/user/sign_up/what_is_your_budget.dart';
import 'package:rchive/view/widget/custom_radio_tiles.dart';
import 'package:rchive/view/widget/my_appbar.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class ProperLiveOrInvestment extends StatelessWidget {
  const ProperLiveOrInvestment({Key? key}) : super(key: key);

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
                  text: 'Choose one of the following options',
                  size: 18,
                  weight: FontWeight.w600,
                  color: kBlackColor2,
                ),
                const SizedBox(
                  height: 30,
                ),
                customRadioTile('I am looking for a proper to live in', 0),
                const SizedBox(
                  height: 10,
                ),
                customRadioTile('I am buying an investment', 1),
                const SizedBox(
                  height: 10,
                ),
                customRadioTile('I don\'t know yet', 2),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                MyButton(
                  text: 'Next',
                  onPressed: () {
                    switch (logic.currentIndex) {
                      case 0:
                        {
                          if (kDebugMode) {
                            print("Empty");
                          }
                        }
                        break;
                      case 1:
                        {
                          Get.to(() => const WhatIsYourBudget());
                        }
                        break;
                      case 2:
                        {
                          if (kDebugMode) {
                            print("Empty");
                          }
                        }
                        break;
                      default:
                        {
                          if (kDebugMode) {
                            print(logic.currentIndex);
                          }
                        }
                    }
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
