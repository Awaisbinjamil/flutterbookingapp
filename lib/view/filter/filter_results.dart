import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/filter/item_detail.dart';
import 'package:rchive/view/filter/item_filter_detail.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';

class FilterResult extends StatelessWidget {
  const FilterResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 90,
        leadingWidth: 40,
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Image.asset(
                'assets/images/back.png',
                height: 20,
              ),
            ),
          ],
        ),
        title: TextFormField(
          cursorColor: kBlackColor,
          style: const TextStyle(
            fontFamily: 'Mulish',
            color: kBlackColor,
          ),
          decoration: InputDecoration(
            hintText: 'Search suburb, postcode, state ',
            hintStyle: const TextStyle(
              fontFamily: 'Mulish',
              color: kBlackColor,
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
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(),
                MyButton(
                  text: 'Filter',
                  height: 33,
                  textSize: 12,
                  radius: 10.0,
                  textColor: kBlackColor3,
                  btnBgColor: kLightGreyColor4,
                  fontFamily: 'Mulish',
                  onPressed: () {},
                  // onPressed: () => Get.to(() => FilterMain()),
                ),
                MyButton(
                  text: 'Sort',
                  height: 33,
                  textSize: 12,
                  radius: 10.0,
                  textColor: kBlackColor3,
                  btnBgColor: kLightGreyColor4,
                  fontFamily: 'Mulish',
                  onPressed: () {},
                ),
                MyButton(
                  text: 'Map',
                  height: 33,
                  textSize: 12,
                  radius: 10.0,
                  textColor: kBlackColor3,
                  btnBgColor: kLightGreyColor4,
                  fontFamily: 'Mulish',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
              itemCount: 3,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => filterCards(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget filterCards(int index) {
    List results = [
      'assets/images/unsplaasssh_aren8nutd1Q.png',
      'assets/images/unsplasadadh_bjej8BY1JYQ.png',
      'assets/images/unsplash_RCF522KSWb7Ms.png',
    ];
    return GestureDetector(
      onTap: () => Get.to(() => const ItemDetail()),
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kBorderColor,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.asset(
                    '${results[index]}',
                    fit: BoxFit.cover,
                    height: 125,
                    width: Get.width,
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: GestureDetector(
                      onTap: () => Get.to(() => const ItemFilterDetail()),
                      child: Image.asset(
                        'assets/images/Group 6452.png',
                        height: 31,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10.0,
                    runSpacing: 10,
                    children: [
                      Image.asset(
                        'assets/images/location.png',
                        height: 15,
                      ),
                      MyText(
                        text: '123 Smith St, smithfiel NSW',
                        size: 16,
                        weight: FontWeight.w500,
                        color: const Color(0xff030919),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 13,
                              color: kBlackColor2,
                              fontFamily: 'Inter',
                            ),
                            children: [
                              TextSpan(
                                text: 'Price: ',
                              ),
                              TextSpan(
                                text: '\$1,200,000',
                                style: TextStyle(
                                  color: kGreyColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 13,
                              color: kBlackColor2,
                              fontFamily: 'Inter',
                            ),
                            children: [
                              TextSpan(
                                text: 'Features: ',
                              ),
                              TextSpan(
                                text: '44',
                                style: TextStyle(
                                  color: kGreyColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: MyText(
                          text: '3 B 2 B 1C   320sqm',
                          size: 13,
                          color: kGreyColor,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 13,
                              color: kBlackColor2,
                              fontFamily: 'Inter',
                            ),
                            children: [
                              TextSpan(
                                text: 'Interest: ',
                              ),
                              TextSpan(
                                text: 'Low',
                                style: TextStyle(
                                  color: kGreyColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
