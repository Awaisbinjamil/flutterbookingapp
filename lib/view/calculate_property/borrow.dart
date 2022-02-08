import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_text.dart';

class Borrow extends StatelessWidget {
  const Borrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset(
                'assets/images/back.png',
                height: 20,
              ),
            ),
          ],
        ),
        title: MyText(
          text: 'Use property',
          size: 18,
          weight: FontWeight.w700,
          color: kYellowColor,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: 154,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  width: 1, color: kSecondaryColor.withOpacity(0.20)),
              color: kSecondaryColor.withOpacity(0.10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: '+Add Property',
                  size: 16,
                  weight: FontWeight.w500,
                  color: kBlackColor2,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                flex: 6,
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: kBlackColor2,
                      fontFamily: 'Inter',
                    ),
                    children: [
                      TextSpan(
                        text: 'Listed Price: ',
                      ),
                      TextSpan(
                        text: '\$1,200,000',
                        style: TextStyle(
                          color: kSubTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 22,
                        decoration: BoxDecoration(
                          color: kSecondaryColor.withOpacity(0.20),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: MyText(
                            text: 'Occupy',
                            size: 10,
                            color: kBlackColor2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 22,
                        decoration: BoxDecoration(
                          color: kYellowColor.withOpacity(0.35),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: kYellowColor,
                          ),
                        ),
                        child: Center(
                          child: MyText(
                            text: 'Invest',
                            size: 10,
                            color: kBlackColor2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor2,
                    fontFamily: 'Inter',
                  ),
                  children: [
                    TextSpan(
                      text: 'Rental Return: ',
                    ),
                    TextSpan(
                      text: '\$1,200,000',
                      style: TextStyle(
                        color: kSubTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor2,
                    fontFamily: 'Inter',
                  ),
                  children: [
                    TextSpan(
                      text: 'Yeild: ',
                    ),
                    TextSpan(
                      text: '3.2%',
                      style: TextStyle(
                        color: kSubTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                text: 'How much can i borrow?',
                size: 14,
                color: kSecondaryColor,
                weight: FontWeight.w700,
              ),
              MyText(
                text: '\$1,650,000',
                size: 14,
                color: kBlackColor2,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 1,
                color: kLightGreyColor,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyText(
                  paddingLeft: 15,
                  text: 'Mortgage',
                  size: 16,
                  weight: FontWeight.w700,
                  color: kBlackColor2,
                ),
                MyText(
                  paddingLeft: 15,
                  paddingTop: 15.0,
                  paddingBottom: 20.0,
                  text: 'Deposit',
                  weight: FontWeight.w500,
                  color: kBlackColor2,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Cash Available: ',
                        size: 13,
                        color: kBlackColor2,
                      ),
                      MyText(
                        text: '\$120,000',
                        size: 13,
                        color: kBlackColor2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Equity Available: ',
                        size: 13,
                        color: kBlackColor2,
                      ),
                      MyText(
                        text: '\$240,000',
                        size: 13,
                        color: kBlackColor2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Total Deposit: ',
                        size: 13,
                        color: kBlackColor2,
                      ),
                      MyText(
                        text: '\$360,000',
                        size: 13,
                        color: kBlackColor2,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20,top: 10),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  color: kBorderColor.withOpacity(0.5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyText(
                              text: 'Property price',
                              size: 12,
                              color: kBlackColor2,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              height: 1,
                              color: kBlackColor2,
                            ),
                            MyText(
                              text: '\$120,000',
                              size: 12,
                              color: kBlackColor2,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              height: 3,
                              width: 11,
                              color: kBlackColor2,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyText(
                              text: 'Total deposit',
                              size: 12,
                              color: kBlackColor2,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              height: 1,
                              color: kBlackColor2,
                            ),
                            MyText(
                              text: '\$360,000',
                              size: 12,
                              color: kBlackColor2,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              height: 3,
                              width: 11,
                              color: kBlackColor2,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 3,
                              width: 11,
                              color: kBlackColor2,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MyText(
                              text: 'Loan',
                              size: 12,
                              color: kBlackColor2,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              height: 1,
                              color: kBlackColor2,
                            ),
                            MyText(
                              text: '\$840,000',
                              size: 12,
                              color: kBlackColor2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Interest Rate: ',
                        size: 13,
                        color: kBlackColor2,
                      ),
                      MyText(
                        text: '\$120,000',
                        size: 13,
                        color: kBlackColor2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Repayments: ',
                        size: 13,
                        color: kBlackColor2,
                      ),
                      MyText(
                        text: '\$3,272',
                        size: 13,
                        color: kBlackColor2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Total Loan Repayments: ',
                        size: 13,
                        color: kBlackColor2,
                      ),
                      MyText(
                        text: '\$1,177,623',
                        size: 13,
                        color: kBlackColor2,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Total Loan Charged:  ',
                        size: 13,
                        color: kBlackColor2,
                      ),
                      MyText(
                        text: '\$1,177,623',
                        size: 13,
                        color: kBlackColor2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
