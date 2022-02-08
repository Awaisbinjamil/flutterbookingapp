import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/add_property/when_did_you_buy_property.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_appbar.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:rchive/view/widget/my_text_field.dart';

class LetsStart extends StatelessWidget {
  const LetsStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: MyText(
          text: 'Let’s start with...',
          size: 18,
          weight: FontWeight.w700,
          color: kBlackColor2,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: kSecondaryColor.withOpacity(0.22),
              ),
              borderRadius: BorderRadius.circular(5),
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
                  color: kSecondaryColor,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyText(
                paddingBottom: 20.0,
                text: 'What much did you pay?',
                size: 16,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              MyTextField(
                hintText: 'E.g. \$854,700',
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyText(
                paddingBottom: 20.0,
                text: 'What much did you still owe?',
                size: 16,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              MyTextField(
                hintText: 'E.g. \$854,700',
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyText(
                paddingBottom: 20.0,
                text: 'What is your interest rate?',
                size: 16,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              MyTextField(
                hintText: 'E.g. 2.95%',
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyText(
                paddingBottom: 20.0,
                text: 'What is your repayment frequency?',
                size: 16,
                weight: FontWeight.w600,
                color: kBlackColor,
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 1.0,
                    color: kBorderColor,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: MyText(
                        text: 'Monthly',
                        size: 15,
                        weight: FontWeight.w500,
                        color: kLightGreyColor,
                      ),
                    ),
                    Image.asset(
                      'assets/images/gridicons_dropdown.png',
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          MyButton(
            text: 'Next',
            onPressed: () => Get.to(() => const WhenDidYouBuyProperty()),
          ),
          const SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
