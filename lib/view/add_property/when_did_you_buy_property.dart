import 'package:flutter/material.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/custom_radio_tiles.dart';
import 'package:rchive/view/widget/my_appbar.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class WhenDidYouBuyProperty extends StatelessWidget {
  const WhenDidYouBuyProperty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyText(
                  paddingBottom: 40.0,
                  text: 'When did you buy the property?',
                  size: 16,
                  weight: FontWeight.w600,
                  color: kBlackColor,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyText(
                            text: 'Month',
                            size: 14,
                            color: kBlackColor2,
                            paddingBottom: 8.0,
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1.0,
                                color: kSecondaryColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: MyText(
                                      text: 'January',
                                      size: 15,
                                      weight: FontWeight.w500,
                                      color: kBlackColor2,
                                    ),
                                  ),
                                ),
                                RotatedBox(
                                  quarterTurns: 2,
                                  child: Image.asset(
                                    'assets/images/gridicons_dropdown.png',
                                    height: 30,
                                    color: kGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MyText(
                            text: 'Year',
                            size: 14,
                            color: kBlackColor2,
                            paddingBottom: 8.0,
                          ),
                          Container(
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1.0,
                                color: kSecondaryColor,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: MyText(
                                      text: '2018',
                                      size: 15,
                                      weight: FontWeight.w500,
                                      color: kBlackColor2,
                                    ),
                                  ),
                                ),
                                RotatedBox(
                                  quarterTurns: 2,
                                  child: Image.asset(
                                    'assets/images/gridicons_dropdown.png',
                                    height: 30,
                                    color: kGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                MyText(
                  paddingBottom: 20.0,
                  text: 'Are you planning to sell the home in the near future?',
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
            MyButton(
              text: 'Next',
              onPressed: () {},
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
