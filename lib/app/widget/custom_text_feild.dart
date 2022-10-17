import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../modules/log_in/controllers/log_in_controller.dart';

Widget custom_textfield(
    double screenHeigth, double screenWidth, Widget icon, String hinttxt,LogInController _logController) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Color(0xff00602B),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        height: screenHeigth * 0.070,
        width: 70,
        child: icon,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          border: Border.all(
            width: 1,
            color: Color(0xff00602B),
          ),
        ),
        height: screenHeigth * 0.070,
        width: screenWidth * 0.60,
        child: Center(
          child: Padding(
            padding:  EdgeInsets.only(
              left: 20,
            ),
            child: TextFormField(
                obscureText: hinttxt == "Password" ? true : false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hinttxt,
                ),
              onChanged : (value) {
                hinttxt == "User email" ?
                    _logController.email.value = value.toString() :
                    _logController.password.value = value.toString();
              },

            ),
          ),
        ),
      ),
    ],
  );
}
