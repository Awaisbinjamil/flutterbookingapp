import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/view/constant/constant.dart';

// ignore: must_be_immutable
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  VoidCallback? backButton;
  // ignore: prefer_typing_uninitialized_variables
  var title;

  MyAppBar({Key? key,
    this.backButton,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: backButton ?? () => Get.back(),
            child: Image.asset(
              'assets/images/back.png',
              height: 20,
            ),
          ),
        ],
      ),
      title: title,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(0, 65);
}
