import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/register_controller.dart';

class PageOne extends StatelessWidget {
  // const PageOne({Key? key}) : super(key: key);

  final RegisterController regController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      // resizeToAvoidBottomInset: false,
      body: Container(
        height: 500,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeigth * 0.020,
              ),
              page_one_textfield(
                screenHeigth,
                screenWidth,
                Icon(
                  Icons.password,
                  color: Colors.white,
                  size: 30,
                ),
                "User Name",
              ),
              SizedBox(
                height: screenHeigth * 0.010,
              ),
              page_one_textfield(
                screenHeigth,
                screenWidth,
                Icon(
                  Icons.password,
                  color: Colors.white,
                  size: 30,
                ),
                "User Email",
              ),
              SizedBox(
                height: screenHeigth * 0.010,
              ),
              page_one_textfield(
                screenHeigth,
                screenWidth,
                Icon(
                  Icons.password,
                  color: Colors.white,
                  size: 30,
                ),
                "User Role",
              ),
              SizedBox(
                height: screenHeigth * 0.010,
              ),
              page_one_textfield(
                screenHeigth,
                screenWidth,
                Icon(
                  Icons.password,
                  color: Colors.white,
                  size: 30,
                ),
                "Address Id",
              ),
              SizedBox(
                height: screenHeigth * 0.010,
              ),
              page_one_textfield(
                screenHeigth,
                screenWidth,
                Icon(
                  Icons.password,
                  color: Colors.white,
                  size: 30,
                ),
                "Password",
              ),
              SizedBox(
                height: screenHeigth * 0.010,
              ),
              page_one_textfield(
                screenHeigth,
                screenWidth,
                Icon(
                  Icons.password,
                  color: Colors.white,
                  size: 30,
                ),
                "Confirm Password",
              ),
            ],
          ),
        ),
      ),
    );
  }

  page_one_textfield(
      double screenHeigth, double screenWidth, Widget icon, String hinttxt) {
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
          height: screenHeigth * 0.060,
          width: screenWidth * 0.170,
          // width: 70,
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
          height: screenHeigth * 0.060,
          width: screenWidth * 0.60,
          // width: 600,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: TextFormField(
                obscureText: hinttxt == "Password"
                    ? true
                    : hinttxt == "Confirm Password"
                        ? true
                        : false,
                keyboardType: hinttxt == 'User Role'
                    ? TextInputType.number
                    : hinttxt == 'Address Id'
                        ? TextInputType.number
                        : TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hinttxt,
                ),
                onChanged: (value) {
                  hinttxt == "User Name"
                      ? regController.name.value = value.toString()
                      : hinttxt == "User Email"
                          ? regController.email.value = value.toString()
                          : hinttxt == "User Role"
                              ? regController.userRole.value = value.toString()
                              : hinttxt == "Address Id"
                                  ? regController.addressId.value =
                                      value.toString()
                                  : hinttxt == "Password"
                                      ? regController.password.value =
                                          value.toString()
                                      : regController.confirmPassword.value =
                                          value.toString();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
