import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/animation_500_kw7lcs5k 1.png',
                height: 161,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            MyText(
              paddingBottom: 10.0,
              paddingLeft: 30.0,
              paddingRight: 30.0,
              text: 'Okay, we’re here to help!',
              size: 24,
              align: TextAlign.center,
              color: kYellowColor,
              weight: FontWeight.w800,
            ),
            MyText(
              paddingTop: 10.0,
              text:
                  'We’ve partnered with <Bank> to help provide hassle free loans, the best part - no paperwork!\n\nWe’ll send your contact details to a home lending specialist thry’ll be in contact shortly.\n\nIn the meantime, browse Rchive for your dream home!',
              size: 14,
              color: kGreyColor2,
            ),
            const SizedBox(
              height: 60,
            ),
            MyButton(
              text: 'Start searching',
              onPressed: () => Get.to(() => const BottomNavBar()),
            ),
          ],
        ),
      ),
    );
  }
}
