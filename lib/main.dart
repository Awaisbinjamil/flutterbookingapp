import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rchive/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:rchive/view/compare/compare.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/filter/filter_buy_rent_sold.dart';
import 'package:rchive/view/filter/item_detail.dart';
import 'package:rchive/view/home/home.dart';
import 'package:rchive/view/investment_portal/investment_portal.dart';
import 'package:rchive/view/splash_screen/splash_screen.dart';
import 'package:rchive/view/user/login.dart';
import 'package:rchive/view/user/sign_up/buy_or_rent.dart';
import 'package:rchive/view/user/sign_up/lets_know_about_you.dart';
import 'package:rchive/view/user/sign_up/proper_live_or_investment.dart';
import 'package:rchive/view/user/sign_up/what_is_your_budget.dart';
import 'package:rchive/view/welcome/welcome.dart';
import 'package:rchive/view/welcome/welcome_2.dart';

void main() => runApp(const Rchive());

class Rchive extends StatelessWidget {
  const Rchive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: 'Rchive',
      theme: AppStyling.styling,
      themeMode: ThemeMode.light,
      initialRoute: '/splash_screen',
      getPages: [
        GetPage(name: '/splash_screen', page: () => const SplashScreen()),
        GetPage(name: '/login', page: () => const Login()),
        GetPage(name: '/bottom_nav_bar', page: () => const BottomNavBar()),
        GetPage(
            name: '/lets_know_about_you', page: () => const LetsKnowAboutYou()),
        GetPage(name: '/buy_or_rent', page: () => const BuyOrRent()),
        GetPage(
            name: '/proper_live_or_investment',
            page: () => const ProperLiveOrInvestment()),
        GetPage(
            name: '/what_is_your_budget', page: () => const WhatIsYourBudget()),
        GetPage(name: '/welcome', page: () => const Welcome()),
        GetPage(name: '/welcome_2', page: () => const Welcome2()),
        GetPage(name: '/home', page: () => const Home()),
        GetPage(name: '/item_detail', page: () => const ItemDetail()),
        GetPage(
            name: '/investment_portal', page: () => const InvestmentPortal()),
        GetPage(name: '/compare', page: () => const Compare()),
        GetPage(name: '/filter_buy_rent_sold', page: () => FilterBuyRentSold()),
      ],
    );
  }
}
