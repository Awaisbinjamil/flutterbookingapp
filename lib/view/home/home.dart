import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/controller/home_controller/home_controller.dart';
import 'package:rchive/view/bottom_sheets/bottom_sheets.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:rchive/view/widget/post_cards.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (logic) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 90,
            elevation: 0,
            backgroundColor: kPrimaryColor,
            title: const SearchFilter(),
          ),
          body: ListView(
            padding: const EdgeInsets.only(bottom: 30),
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              heading('Investment Picks'),
              SizedBox(
                height: 182,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: logic.getInvestmentPicks.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  itemBuilder: (context, index) {
                    var data = logic.getInvestmentPicks[index];
                    return PostCards(
                      propertyImage: data.propertyImage,
                      name: data.name,
                      price: data.price,
                    );
                  },
                ),
              ),
              heading('Lux Listings'),
              SizedBox(
                height: 182,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: logic.getLuxListing.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  itemBuilder: (context, index) {
                    var data = logic.getLuxListing[index];
                    return PostCards(
                      propertyImage: data.propertyImage,
                      name: data.name,
                      price: data.price,
                    );
                  },
                ),
              ),
              heading('VIP Access'),
              SizedBox(
                height: 182,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: logic.getVipAccess.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  itemBuilder: (context, index) {
                    var data = logic.getVipAccess[index];
                    return PostCards(
                      propertyImage: data.propertyImage,
                      name: data.name,
                      price: data.price,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  MyText heading(String text) {
    return MyText(
      paddingLeft: 15.0,
      paddingBottom: 10.0,
      paddingTop: 20.0,
      text: text,
      size: 16,
      color: kBlackColor,
      weight: FontWeight.w700,
    );
  }
}

class SearchFilter extends StatelessWidget {
  const SearchFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kBlackColor2,
      style: const TextStyle(
        fontFamily: 'Mulish',
        color: kNavGreyColor,
      ),
      decoration: InputDecoration(
        hintText: 'Search suburb, postcode, state ',
        hintStyle: const TextStyle(
          fontFamily: 'Mulish',
          color: kNavGreyColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: kLightGreyColor.withOpacity(0.3),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: kLightGreyColor.withOpacity(0.3),
            width: 1,
          ),
        ),
        prefixIcon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/search.png',
              height: 22,
            ),
          ],
        ),
        suffixIcon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.bottomSheet(
                const Filters(),
                isScrollControlled: true,
              ),
              child: Image.asset(
                'assets/images/IC_Filter.png',
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
