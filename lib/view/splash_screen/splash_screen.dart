import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rchive/controller/splash_controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashScreenController>(
          init: SplashScreenController(),
          builder: (logic) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Logo PNG (1) 1.png',
                  height: 64,
                ),
              ],
            );
          }),
    );
  }
}
