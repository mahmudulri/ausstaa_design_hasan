import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:outlined_text/models/outlined_text_stroke.dart';
import 'package:outlined_text/outlined_text.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {

  GetStorage _getStorage = GetStorage('app_storage');

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;

    Timer(Duration(milliseconds: 2800), () {
      checkLoginStatus();

    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0FA958),
        body: Stack(
          children: [
            Center(
              child: Lottie.asset("assets/files/splash.json"),
            ),
            Center(
              child: OutlinedText(
                text: Text('austtaa',
                    style: GoogleFonts.koHo(
                      color: Colors.white,
                      fontSize: screenHeigth * 0.040,
                      fontWeight: FontWeight.bold,
                    )),
                strokes: [
                  OutlinedTextStroke(
                      color: Color(0xff00602B), width: screenWidth * 0.020),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  checkLoginStatus() async {
    var loginToken = await _getStorage.read('token');
    if(loginToken != "" && loginToken!=null){
      return Get.offNamed(Routes.HOME);
    }
    else{
      return Get.offNamed(Routes.LOG_IN);
    }
  }
}
