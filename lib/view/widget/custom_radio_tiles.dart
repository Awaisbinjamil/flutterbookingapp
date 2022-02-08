import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';
import 'package:rchive/view/widget/my_text.dart';

class CustomRadioTileController extends GetxController {
  var currentIndex = 0;

  void selectedValue(var index) {
    currentIndex = index;
    if (kDebugMode) {
      print(currentIndex);
    }
    update();
  }
}

Widget customRadioTile(String title, var index) {
  return GetBuilder<CustomRadioTileController>(
    init: CustomRadioTileController(),
    builder: (logic) {
      return ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onTap: () {
          logic.selectedValue(index);
        },
        title: MyText(
          text: title,
          size: 16,
          color: kBlackColor2,
        ),
        trailing: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: kLightGreyColor3,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: logic.currentIndex == index
                    ? kSecondaryColor
                    : kPrimaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ),
      );
    },
  );
}
