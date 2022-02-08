import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xffFAFAFA);
const kSecondaryColor = Color(0xff485AFE);
const kLightBlueColor = Color(0xffA1A9F2);
const kYellowColor = Color(0xffF78E1B);
const kLightBlueColor2 = Color(0xff7A85E5);
const kGreyColor = Color(0xff7B7B7B);
const kNavGreyColor = Color(0xff7D7F88);
const kGreyColor2 = Color(0xff555B6A);
const kGreyColor3 = Color(0xff73767D);
const kWhiteColor = Color(0xffFFFFFF);
const kLightGreyColor = Color(0xffB2B2B2);
const kSubTextColor = Color(0xff7B7B7B);
const kLightGreyColor2 = Color(0xffEDEEF2);
const kLightGreyColor3 = Color(0xffB3B3B3);
const kLightGreyColor4 = Color(0xffEBEBED);
const kBlackColor = Color(0xff000000);
const kBlackColor2 = Color(0xff030919);
const kBlackColor3 = Color(0xff3A3D45);
const kBlackColor4 = Color(0xff333333);
const kBorderColor = Color(0xffE5E5E5);

var gradientEffect = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Color(0xff485AFE),
    Color(0xff13BEFF),
  ],
);

class AppStyling {
  static final styling = ThemeData(
    scaffoldBackgroundColor: kPrimaryColor,
    colorScheme: ColorScheme.light(
      secondary: kSecondaryColor.withOpacity(0.1),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: kPrimaryColor,
    ),
    fontFamily: 'Inter',
  );
}
