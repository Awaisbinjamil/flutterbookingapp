import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/filter/filter_results.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool? house = false, hotel = false, villa = false, apartment = false;
  double? val = 1;
  RangeValues values = const RangeValues(10, 20);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kPrimaryColor,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: SizedBox(
        height: Get.height * 0.75,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: 'Filters',
                    size: 18,
                    weight: FontWeight.w700,
                    color: kBlackColor,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [
                  MyText(
                    text: 'Property Type',
                    paddingLeft: 15.0,
                    size: 16,
                    weight: FontWeight.w500,
                    color: kBlackColor,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    leading: MyText(
                      text: 'House ',
                      color: kBlackColor,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: house,
                          checkColor: kPrimaryColor,
                          activeColor: kSecondaryColor,
                          onChanged: (value) {
                            setState(() {
                              house = !house!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    leading: MyText(
                      text: 'Hotels',
                      color: kBlackColor,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: hotel,
                          checkColor: kPrimaryColor,
                          activeColor: kSecondaryColor,
                          onChanged: (value) {
                            setState(() {
                              hotel = !hotel!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    leading: MyText(
                      text: 'Villa ',
                      color: kBlackColor,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: villa,
                          checkColor: kPrimaryColor,
                          activeColor: kSecondaryColor,
                          onChanged: (value) {
                            setState(() {
                              villa = !villa!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    minLeadingWidth: 100,
                    leading: MyText(
                      text: 'Apartment ',
                      color: kBlackColor,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: apartment,
                          checkColor: kPrimaryColor,
                          activeColor: kSecondaryColor,
                          onChanged: (value) {
                            setState(() {
                              apartment = !apartment!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  MyText(
                    paddingLeft: 15.0,
                    text: 'Price',
                    size: 16,
                    weight: FontWeight.w500,
                    color: kBlackColor,
                  ),
                  RangeSlider(
                    onChanged: (value) {
                      setState(() {
                        values = value;
                      });
                    },
                    min: 1,
                    max: 100,
                    activeColor: kSecondaryColor,
                    inactiveColor: kSecondaryColor.withOpacity(0.1),
                    values: values,
                  ),
                  MyText(
                    text: 'Beds',
                    size: 16,
                    weight: FontWeight.w500,
                    color: kBlackColor,
                    paddingBottom: 10.0,
                    paddingLeft: 15.0,
                    paddingTop: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 124,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: kBorderColor,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Expanded(
                                flex: 7,
                                child: Center(
                                  child: TextField(
                                    cursorColor: kBlackColor,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: kLightGreyColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      hintText: '1',
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: kLightGreyColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                color: kBorderColor,
                                width: 1,
                                height: 50,
                              ),
                              Expanded(
                                flex: 4,
                                child: Center(
                                  child: MyText(
                                    text: 'Min',
                                    weight: FontWeight.w500,
                                    color: kBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 124,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: kBorderColor,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Expanded(
                                flex: 7,
                                child: Center(
                                  child: TextField(
                                    cursorColor: kBlackColor,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: kLightGreyColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      hintText: '5',
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: kLightGreyColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                color: kBorderColor,
                                width: 1,
                                height: 50,
                              ),
                              Expanded(
                                flex: 4,
                                child: Center(
                                  child: MyText(
                                    text: 'Max',
                                    weight: FontWeight.w500,
                                    color: kBlackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: MyButton(
                      text: 'Search',
                      onPressed: () => Get.to(() => const FilterResult()),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
