import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/user/sign_up/lets_know_about_you.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:rchive/view/widget/my_text_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                MyText(
                  paddingTop: 40,
                  align: TextAlign.center,
                  text: 'Create an account',
                  size: 18,
                  weight: FontWeight.w700,
                ),
                MyText(
                  align: TextAlign.center,
                  paddingTop: 15.0,
                  text: 'First, lets get your account set up:',
                  size: 18,
                  weight: FontWeight.w500,
                  color: kGreyColor,
                ),
              ],
            ),
            Container(),
            MyTextField(
              bottomPadding: 0.0,
              hintText: 'Email Address',
            ),
            MyTextField(
              bottomPadding: 0.0,
              hintText: 'Password',
              obsecure: true,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyButton(
                  text: 'Create an account',
                  onPressed: () => Get.to(() => const LetsKnowAboutYou()),
                ),
                MyText(
                  paddingTop: 20.0,
                  align: TextAlign.center,
                  text: 'Already have an account?',
                  size: 12,
                  color: kSecondaryColor,
                ),
              ],
            ),
            MyText(
              align: TextAlign.center,
              text: 'OR',
              size: 18,
              weight: FontWeight.w600,
              color: kBlackColor,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 1,
                  color: kLightBlueColor,
                ),
                Container(
                  height: 26,
                  width: 78,
                  decoration: BoxDecoration(
                    color: kLightGreyColor2,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: MyText(
                      maxlines: 1,
                      overFlow: TextOverflow.ellipsis,
                      text: 'Sign up'.toUpperCase(),
                      size: 12,
                      weight: FontWeight.w600,
                      color: kLightBlueColor2,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/Button.png',
                  height: 50,
                ),
                Image.asset(
                  'assets/images/Group 6403.png',
                  height: 50,
                ),
                Image.asset(
                  'assets/images/Group 6389.png',
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
