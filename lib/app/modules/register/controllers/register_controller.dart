

import 'package:aust_textile_alumni/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../otp/views/otp_view.dart';
import '../providers/register_provider.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  var name = ''.obs;
  var email = ''.obs;
  var userRole = ''.obs;
  var addressId = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  var isLoading = false.obs;


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

  Future<void> checkRegistration() async {
    // final isValid = resgistrationFromKey.currentState!.validate();
    // if (!isValid) {
    //   return;
    // } else {
    //   resgistrationFromKey.currentState!.save();
    // }

    isLoading.value = true;

    var status = await RegisterProvider()
        .doRegistration(name.value, email.value, userRole.value,addressId.value, password.value, confirmPassword.value);
    print("login status ......." + status.toString());

    if (status == true) {
      isLoading.value = false;
      // Get.offAndToNamed(Routes.HOME);
      Get.toNamed(Routes.OTP);
    } else {
      isLoading.value = false;
      Get.snackbar(
        "Status",
        "Could not Registered the User",
        colorText: Colors.white,
        backgroundColor:Color(0xff00602B),
        snackPosition: SnackPosition.BOTTOM,

      );
    }
  }
}
