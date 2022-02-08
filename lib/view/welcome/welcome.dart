import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

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
              text: 'Okay, you’re ready to go!',
              size: 24,
              align: TextAlign.center,
              color: kYellowColor,
              weight: FontWeight.w800,
            ),
            MyText(
              align: TextAlign.center,
              paddingTop: 10.0,
              paddingLeft: 30.0,
              paddingRight: 30.0,
              text:
                  'You can add or update information on your profile at anytime for an improved experience on Rchive',
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
