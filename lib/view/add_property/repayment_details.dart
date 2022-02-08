import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/add_property/lets_start.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class RepaymentDetails extends StatelessWidget {
  const RepaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                MyText(
                  text: 'That’s done!',
                  size: 18,
                  weight: FontWeight.w700,
                  color: kYellowColor,
                  paddingBottom: 20.0,
                ),
                MyText(
                  paddingRight: 20.0,
                  paddingLeft: 20.0,
                  align: TextAlign.center,
                  text:
                      'Would you like to add your current repayment details? By doing this you’ll have a real time view of your property equity, property value and plenty more.',
                  size: 14,
                  color: const Color(0xff2F3136),
                  paddingBottom: 20.0,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyText(
                        align: TextAlign.center,
                        text: 'Home of Ownership',
                        size: 15,
                        color: kGreyColor,
                        paddingBottom: 15.0,
                      ),
                      CircularStepProgressIndicator(
                        totalSteps: 100,
                        unselectedStepSize: 50.0,
                        currentStep: 73,
                        stepSize: 13,
                        selectedStepSize: 50.0,
                        selectedColor: kSecondaryColor,
                        unselectedColor: kSecondaryColor.withOpacity(0.13),
                        padding: 0,
                        width: 81,
                        height: 81,
                      ),
                      MyText(
                        paddingTop: 15.0,
                        align: TextAlign.center,
                        text: '88%',
                        size: 15,
                        weight: FontWeight.w600,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyText(
                        align: TextAlign.center,
                        text: 'Equity',
                        size: 15,
                        color: kGreyColor,
                        paddingBottom: 15.0,
                      ),
                      CircularStepProgressIndicator(
                        totalSteps: 100,
                        currentStep: 74,
                        stepSize: 13,
                        selectedStepSize: 13,
                        selectedColor: kSecondaryColor,
                        unselectedColor: kSecondaryColor.withOpacity(0.13),
                        padding: 0,
                        width: 81,
                        height: 81,
                      ),
                      MyText(
                        paddingTop: 15.0,
                        align: TextAlign.center,
                        text: '\$456, 000',
                        size: 15,
                        weight: FontWeight.w600,
                        color: kGreyColor,
                        paddingBottom: 10.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => Get.to(() => const LetsStart()),
                    highlightColor: kSecondaryColor.withOpacity(0.13),
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: kSecondaryColor,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: MyText(
                          text: 'Yes',
                          size: 15,
                          weight: FontWeight.w500,
                          color: kBlackColor2,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    highlightColor: kSecondaryColor.withOpacity(0.13),
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: kSecondaryColor,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: MyText(
                          text: 'No',
                          size: 15,
                          weight: FontWeight.w500,
                          color: kBlackColor2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
