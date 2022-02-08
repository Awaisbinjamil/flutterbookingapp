import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/filter/tabs/comments.dart';
import 'package:rchive/view/filter/tabs/description.dart';
import 'package:rchive/view/filter/tabs/feature.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ItemFilterDetail extends StatelessWidget {
  const ItemFilterDetail({Key? key}) : super(key: key);

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        MyText(
                          text: '5y Growth: ',
                          size: 14,
                          color: kBlackColor2,
                          weight: FontWeight.w500,
                        ),
                        MyText(
                          text: '+39.2%',
                          size: 14,
                          color: const Color(0xff0ACF83),
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        MyText(
                          text: 'Agent Rating:  ',
                          size: 14,
                          color: kBlackColor2,
                          weight: FontWeight.w500,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          width: 54,
                          child: StepProgressIndicator(
                            totalSteps: 100,
                            currentStep: 50,
                            size: 9,
                            padding: 0,
                            selectedColor: kSecondaryColor,
                            unselectedColor: kSecondaryColor.withOpacity(0.2),
                            roundedEdges: const Radius.circular(50),
                          ),
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
            const Expanded(
              child: TabBarView(
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
