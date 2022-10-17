import 'dart:ui';

import 'package:aust_textile_alumni/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../providers/login_provider.dart';

class LogInController extends GetxController {
  //TODO: Implement LogInController

  var isLoading = false.obs;

  var email = ''.obs;
  var password = ''.obs;
  
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future<void> checkLogin() async {
    // final isValid = LoginFromKey.currentState!.validate();
    // if (!isValid) {
    //   return;
    // } else {
    //   LoginFromKey.currentState!.save();
    // }

    isLoading.value = true;

    var logInStatus = await LoginProvider().verifyUserLogin(email.value, password.value);
    print("login status ......." + logInStatus.toString());

    if (logInStatus == true) {
      isLoading.value = false;
      // Get.offAndToNamed(Routes.HOME);
      Get.toNamed(Routes.HOME);
    } else {
      isLoading.value = false;
      Get.snackbar(
        "Status",
        "Could not log in",
        colorText: Colors.white,
        backgroundColor: Color(0xff00602B),
        snackPosition: SnackPosition.BOTTOM,

      );
    }
  }
}
