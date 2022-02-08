import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/add_property/repayment_details.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_appbar.dart';
import 'package:rchive/view/widget/my_button.dart';
import 'package:rchive/view/widget/my_text.dart';
import 'package:rchive/view/widget/search_bar.dart';

class AddProperty extends StatelessWidget {
  const AddProperty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            MyText(
              text: 'Add your property',
              size: 18,
              weight: FontWeight.w600,
              color: kBlackColor2,
            ),
            const SizedBox(
              height: 30,
            ),
            SearchBar(),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 140,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: kSecondaryColor.withOpacity(0.22),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/unsplash_TiVPTYCG_3E.png',
                      height: 47,
                    ),
                  ),
                  MyText(
                    text: '123 Smith St, Sydney',
                    size: 16,
                    weight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 140,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: kSecondaryColor.withOpacity(0.22),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/Vector.png',
                      height: 30,
                    ),
                  ),
                  MyText(
                    text: 'Add another',
                    size: 16,
                    weight: FontWeight.w600,
                    color: kGreyColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            MyButton(
              text: 'Finished',
              onPressed: () => Get.to(() => const RepaymentDetails()),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
