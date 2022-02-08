import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/welcome/welcome.dart';
import 'package:rchive/view/widget/custom_radio_tiles.dart';
import 'package:rchive/view/widget/my_appbar.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:rchive/view/widget/my_text_field.dart';

class WhatIsYourBudget extends StatelessWidget {
  const WhatIsYourBudget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomRadioTileController>(
      init: CustomRadioTileController(),
      builder: (logic) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: MyAppBar(),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MyText(
                      paddingBottom: 20.0,
                      text: 'What is your budget?',
                      size: 16,
                      weight: FontWeight.w600,
                      color: kBlackColor,
                    ),
                    MyTextField(
                      hintText: 'E.g. \$950,000',
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MyText(
                      paddingBottom: 20.0,
                      text: 'What suburbs are you looking to buy in?',
                      size: 16,
                      weight: FontWeight.w600,
                      color: kBlackColor,
                    ),
                    MyTextField(
                      hintText: 'E.g.  Abbotsford, Drunnoyne',
                    ),
                  ],
                ),
                Column(
                  children: [
                    MyText(
                      paddingBottom: 20.0,
                      text:
                          'Would you like some help with your mortgage finance',
                      size: 16,
                      weight: FontWeight.w600,
                      color: kBlackColor,
                    ),
                    customRadioTile('Yes', 0),
                    const SizedBox(
                      height: 10,
                    ),
                    customRadioTile('No', 1),
                  ],
                ),
                Container(),
                MyButton(
                  text: 'Next',
                  onPressed: () => Get.to(() => const Welcome()),
                ),
                const SizedBox(),
              ],
            ),
          ),
        );
      },
    );
  }
}
