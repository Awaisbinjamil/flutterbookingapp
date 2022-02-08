import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/filter/filter_buy_rent_sold_tabs/rent.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:rchive/view/widget/search_bar.dart';

import 'filter_buy_rent_sold_tabs/buy.dart';

class FilterBuyRentSold extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  FilterBuyRentSold({Key? key}) : super(key: key);

  @override
  State<FilterBuyRentSold> createState() => _FilterBuyRentSoldState();
}

class _FilterBuyRentSoldState extends State<FilterBuyRentSold>
    with SingleTickerProviderStateMixin {
  final List<String>? tabs = [
    'Buy',
    'Rent',
    'Sold',
  ];

  final List<Widget>? tabsData = const [
    Buy(),
    Rent(),
    SizedBox(),
  ];

  int? currentIndex = 0;
  TabController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(
      length: 3,
      vsync: this,
      initialIndex: currentIndex!,
    );
    _controller!.addListener(() {
      setState(() {
        currentIndex = _controller!.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 90,
        automaticallyImplyLeading: false,
        title: SearchBar(
          hintText: 'Search suburb, postcode, state ',
        ),
        bottom: PreferredSize(
          preferredSize: const Size(0, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyText(
                text: 'Filter',
                size: 18,
                weight: FontWeight.w700,
                align: TextAlign.center,
                paddingBottom: 30,
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                child: TabBar(
                  controller: _controller,
                  indicatorColor: Colors.transparent,
                  tabs: List.generate(
                    tabs!.length,
                    (index) => Container(
                      height: 33,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: currentIndex == index
                            ? kSecondaryColor
                            : kLightGreyColor4.withOpacity(0.64),
                      ),
                      child: Center(
                        child: MyText(
                          size: 14,
                          weight: FontWeight.w600,
                          fontFamily: 'Mulish',
                          color: currentIndex == index
                              ? kPrimaryColor
                              : kBlackColor3,
                          text: tabs![index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        children: tabsData!,
      ),
    );
  }
}
