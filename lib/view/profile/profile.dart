import 'package:flutter/material.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: MyText(
          text: 'Account',
          size: 18,
          weight: FontWeight.w700,
          color: kYellowColor,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/Photo People.png',
                height: 45,
              ),
            ),
            title: MyText(
              text: 'Federrickpalermo@gmail.com',
              size: 16,
              weight: FontWeight.w500,
              color: kLightGreyColor,
            ),
            subtitle: MyText(
              text: 'View profile',
              size: 14,
              color: kSecondaryColor,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    MyText(
                      align: TextAlign.center,
                      text: 'Home of Ownership',
                      size: 15,
                      weight: FontWeight.w600,
                      color: kSubTextColor,
                      paddingBottom: 15.0,
                    ),
                    CircularStepProgressIndicator(
                      totalSteps: 100,
                      unselectedStepSize: 50.0,
                      currentStep: 73,
                      stepSize: 13,
                      selectedStepSize: 50.0,
                      selectedColor: kSecondaryColor,
                      unselectedColor: kSecondaryColor.withOpacity(0.13),
                      padding: 0,
                      width: 81,
                      height: 81,
                    ),
                    MyText(
                      paddingTop: 15.0,
                      align: TextAlign.center,
                      text: '88%',
                      size: 15,
                      weight: FontWeight.w600,
                      color: kSubTextColor,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyText(
                      align: TextAlign.center,
                      text: 'Equity',
                      size: 15,
                      weight: FontWeight.w600,
                      color: kSubTextColor,
                      paddingBottom: 15.0,
                    ),
                    CircularStepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 74,
                      stepSize: 13,
                      selectedStepSize: 13,
                      selectedColor: kSecondaryColor,
                      unselectedColor: kSecondaryColor.withOpacity(0.13),
                      padding: 0,
                      width: 81,
                      height: 81,
                    ),
                    MyText(
                      paddingTop: 15.0,
                      align: TextAlign.center,
                      text: '\$1,056, 000',
                      size: 15,
                      weight: FontWeight.w600,
                      color: kSubTextColor,
                      paddingBottom: 10.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          MyText(
            paddingBottom: 10.0,
            paddingTop: 40.0,
            text: 'Your properties',
            size: 16,
            weight: FontWeight.w600,
            color: kBlackColor2,
          ),
          Container(
            height: 154,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  width: 1, color: kSecondaryColor.withOpacity(0.20)),
              color: kSecondaryColor.withOpacity(0.10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/unsplash_TiVPTYCG_3E.png',
                    height: 47,
                  ),
                ),
                MyText(
                  text: '123 Smith St, Sydney',
                  size: 16,
                  weight: FontWeight.w600,
                  color: kBlackColor2,
                ),
                MyText(
                  text: 'Total value: \$1.2m',
                  color: kBlackColor2,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              MyText(
                text: 'Current Repayments: ',
                size: 14,
                color: kBlackColor2,
              ),
              MyText(
                text: '\$1,048',
                size: 14,
                color: kSubTextColor,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              MyText(
                text: 'Refinance & Save: ',
                size: 14,
                color: kBlackColor2,
              ),
              MyText(
                text: '\$183',
                size: 14,
                color: kSubTextColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
