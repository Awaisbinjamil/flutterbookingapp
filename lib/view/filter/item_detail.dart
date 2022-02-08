import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Image.asset(
                      'assets/images/unsplash_aren8nutd1Q.png',
                      height: Get.height,
                      width: 282,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      MyText(
                        text: 'Rent PW: ',
                        size: 14,
                        color: kBlackColor2,
                        weight: FontWeight.w500,
                      ),
                      MyText(
                        text: '\$350',
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
                        text: 'Lease Length: ',
                        size: 14,
                        color: kBlackColor2,
                        weight: FontWeight.w500,
                      ),
                      MyText(
                        text: '12 Months',
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
                        text: 'Days listed: ',
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      MyText(
                        text: 'Property Management poor: ',
                        size: 14,
                        color: kBlackColor2,
                        weight: FontWeight.w500,
                      ),
                      MyText(
                        text: 'poor',
                        size: 14,
                        color: const Color(0xffED5B61),
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
                        text: 'Property Management poor: ',
                        size: 14,
                        color: kBlackColor2,
                        weight: FontWeight.w500,
                      ),
                      MyText(
                        text: 'High',
                        size: 14,
                        color: const Color(0xff0ACF83),
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
