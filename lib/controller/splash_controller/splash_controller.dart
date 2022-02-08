import 'dart:async';
import 'package:get/get.dart';
import 'package:rchive/view/user/login.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer(
      const Duration(seconds: 3),
      () => Get.offAll(() => const Login()),
    );
  }
}
