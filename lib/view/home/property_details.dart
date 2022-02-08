import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/filter/tabs/comments.dart';
import 'package:rchive/view/filter/tabs/description.dart';
import 'package:rchive/view/filter/tabs/feature.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PropertyDetail extends StatelessWidget {
  const PropertyDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          leading: Column(
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
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Image.asset(
                    'assets/images/heart.png',
                    height: 23,
                  ),
                ),
              ],
            )
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 209,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 7),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/unsplash_aren8nutd1Q.png',
                            height: Get.height,
                            width: 282,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 20,
                            right: 10,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaY: 40,
                                  sigmaX: 40,
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  height: 33,
                                  color: kPrimaryColor.withOpacity(0.5),
                                  child: Center(
                                    child: MyText(
                                      text: 'Lived in by Chris Hemsworth!',
                                      size: 11,
                                      weight: FontWeight.w500,
                                      color: kBlackColor2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Image.asset(
                                'assets/images/location.png',
                                height: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyText(
                              text: '123 Smith St, smithfiel NSW',
                              size: 16,
                              weight: FontWeight.w500,
                              color: const Color(0xff030919),
                            ),
                            MyText(
                              paddingTop: 8,
                              text: '3 B 2 B 1C   320sqm',
                              size: 14,
                              weight: FontWeight.w500,
                              color: kSubTextColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  MyText(
                    text: 'Inspection times',
                    size: 16,
                    weight: FontWeight.w700,
                    color: kBlackColor2,
                    paddingBottom: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kBlackColor2,
                              fontFamily: 'Inter',
                            ),
                            children: [
                              TextSpan(
                                text: 'People’s Price: ',
                              ),
                              TextSpan(
                                text: '\$1,200,000',
                                style: TextStyle(
                                  color: kSubTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kBlackColor2,
                              fontFamily: 'Inter',
                            ),
                            children: [
                              TextSpan(
                                text: 'Yeild: ',
                              ),
                              TextSpan(
                                text: '2.2%',
                                style: TextStyle(
                                  color: kSubTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kBlackColor2,
                              fontFamily: 'Inter',
                            ),
                            children: [
                              TextSpan(
                                text: 'Last Solid Date: ',
                              ),
                              TextSpan(
                                text: '\$10/11/2008',
                                style: TextStyle(
                                  color: kSubTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: kBlackColor2,
                              fontFamily: 'Inter',
                            ),
                            children: [
                              TextSpan(
                                text: 'Sale type: ',
                              ),
                              TextSpan(
                                text: 'Auction',
                                style: TextStyle(
                                  color: kSubTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        MyText(
                          text: 'Last Solid Price: ',
                          size: 14,
                          color: kBlackColor2,
                          weight: FontWeight.w500,
                        ),
                        MyText(
                          text: '\$680,000',
                          size: 14,
                          color: kSubTextColor,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        MyText(
                          text: 'Days on market: ',
                          size: 14,
                          color: kBlackColor2,
                          weight: FontWeight.w500,
                        ),
                        MyText(
                          text: '27',
                          size: 14,
                          color: kSubTextColor,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        MyText(
                          text: '12m Growth: ',
                          size: 14,
                          color: kBlackColor2,
                          weight: FontWeight.w500,
                        ),
                        MyText(
                          text: '+12.7%',
                          size: 14,
                          color: kSubTextColor,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        MyText(
                          text: '5y Growth: ',
                          size: 14,
                          color: kBlackColor2,
                          weight: FontWeight.w500,
                        ),
                        MyText(
                          text: '39.2%',
                          size: 14,
                          color: kSubTextColor,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        MyText(
                          text: 'Suburb Profile:  ',
                          size: 14,
                          color: kBlackColor2,
                          weight: FontWeight.w500,
                        ),
                        StepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 50,
                          size: 9,
                          padding: 0,
                          selectedColor: kSecondaryColor,
                          unselectedColor: kSecondaryColor.withOpacity(0.2),
                          roundedEdges: const Radius.circular(50),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: [
                        MyText(
                          text: 'Agent Rating: ',
                          size: 14,
                          paddingRight: 12.5,
                          color: kBlackColor2,
                          weight: FontWeight.w500,
                        ),
                        StepProgressIndicator(
                          totalSteps: 100,
                          currentStep: 80,
                          size: 9,
                          padding: 0,
                          selectedColor: kSecondaryColor,
                          unselectedColor: kSecondaryColor.withOpacity(0.2),
                          roundedEdges: const Radius.circular(50),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 47,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kBorderColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                child: TabBar(
                  labelColor: kPrimaryColor,
                  unselectedLabelColor: kSubTextColor,
                  labelStyle: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                  padding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                  indicator: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  tabs: const [
                    Text('Comment'),
                    Text('Features'),
                    Text('Description'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.5,
              child: const TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  Comments(),
                  Feature(),
                  Description(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
