import 'dart:io';
import 'package:aust_textile_alumni/app/routes/app_pages.dart';
import 'package:aust_textile_alumni/app/utill/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../controllers/user_post_controller.dart';

class UserPost extends StatefulWidget {
  @override
  State<UserPost> createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  List<String> dropDownPostItem = [
    "Menu 1",
    "Menu 2",
  ];

  var selectedItem;

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(2000, 11, 01),
    end: DateTime(2050, 11, 11),
  );

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );
    if (newDateRange == null) return;
    setState(() {
      dateRange = newDateRange;
    });
  }

  UserPostController controller = Get.put(UserPostController());
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;

    final start = dateRange.start;
    final end = dateRange.end;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Post",
            style: TextStyle(
              color: Colors.green,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                height: screenHeigth * 0.001,
                color: Colors.green,
                width: screenWidth,
              ),
            ),
            Container(
              height: screenHeigth * 0.070,
              width: screenWidth,
              decoration: BoxDecoration(
                  // color: Color(0xffE5E5E5),
                  ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TabBar(
                  // indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 4,
                      color: Color(0xFF0FA958),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 0),
                  ),
                  isScrollable: true,
                  labelColor: Colors.black,
                  tabs: [
                    Text(
                      "Global post",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                    Text(
                      "Job post",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                    Text(
                      "My post",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xff333333),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: screenHeigth * 0.015,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Create your post",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeigth * 0.017,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff00602B),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Category",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeigth * 0.017,
                                      color: Color(0xff00602B),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                  ),
                                  hint: Text("Select Category"),
                                  onChanged: (val) {
                                    // controller.postType.value = val.toString();
                                    setState(
                                        () => selectedItem = val.toString());
                                    print(controller.postType.value.toString());
                                  },
                                  value: this.selectedItem,
                                  items: dropDownPostItem.map((quantityValue) {
                                    return DropdownMenuItem(
                                        value: quantityValue,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: screenHeigth * 0.019),
                                          child: Text(
                                            quantityValue,
                                            style: GoogleFonts.poppins(
                                                fontSize: 15.0),
                                          ),
                                        ));
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: screenHeigth * 0.030,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Job title",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeigth * 0.017,
                                      color: Color(0xff00602B),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Container(
                                height: screenHeigth * 0.070,
                                width: screenWidth - 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xffC4C4C4), width: 2),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenHeigth * 0.019,
                                      right: screenHeigth * 0.019),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    minLines: 1,
                                    maxLines: 3,
                                    onChanged: (value) {
                                      controller.postTitle.value =
                                          value.toString();
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your post",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeigth * 0.017,
                                      color: Color(0xff00602B),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Container(
                                height: screenHeigth * 0.35,
                                width: screenWidth - 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xffC4C4C4), width: 2),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenHeigth * 0.019,
                                      right: screenHeigth * 0.019),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    minLines: 1,
                                    maxLines: 30,
                                    onChanged: (value) {
                                      controller.postDescription.value =
                                          value.toString();
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              // Obx(
                              //   () =>
                              GestureDetector(
                                onTap: () async {
                                  // await controller.getImage();
                                },
                                child: Container(
                                  height: screenHeigth * 0.080,
                                  width: screenWidth - 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xff27AE60),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Attach Image / Upload Image',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: screenHeigth * 0.020,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                        '(.jpg .jpeg .png .gif only)',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: screenHeigth * 0.015,
                                            color: Color(0xffFFFFFF)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              // ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tags",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeigth * 0.017,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Container(
                                height: screenHeigth * 0.070,
                                width: screenWidth - 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xffC4C4C4), width: 2),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenHeigth * 0.019,
                                      right: screenHeigth * 0.019),
                                  child: TextFormField(
                                    // controller: controller.chipTextController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    minLines: 1,
                                    maxLines: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),

                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              ToggleSwitch(
                                cornerRadius: 10,
                                minWidth: screenWidth * 0.400,
                                minHeight: screenHeigth * 0.070,
                                fontSize: screenHeigth * 0.018,
                                initialLabelIndex: 1,
                                activeBgColor: [
                                  Color(
                                    0xff00602B,
                                  )
                                ],
                                activeFgColor: Colors.white,
                                inactiveBgColor: Color(0xff0FA958),
                                inactiveFgColor: Colors.white,
                                totalSwitches: 2,
                                labels: ['Draft', 'Post'],
                                onToggle: (index) async {
                                  print('switched to: $index');
                                  // if (index == 1) {
                                  // if (controller.postTitle.value == '' &&
                                  //     controller.postType.value == '' &&
                                  //     controller.postDescription.value == '') {
                                  //   Get.snackbar(
                                  //     "Error",
                                  //     "Fill up all the field",
                                  //     colorText: Colors.white,
                                  //     backgroundColor: Color(0xff00602B),
                                  //     snackPosition: SnackPosition.BOTTOM,
                                  //   );
                                  // } else if (controller.postTitle.value == '' ||
                                  //     controller.postType.value == '' ||
                                  //     controller.postDescription.value == '') {
                                  //   Get.snackbar(
                                  //     "Error",
                                  //     "Fill up all the field",
                                  //     colorText: Colors.white,
                                  //     backgroundColor: Color(0xff00602B),
                                  //     snackPosition: SnackPosition.BOTTOM,
                                  //   );
                                  // } else {
                                  //   await controller.uploadDraftpost();
                                  // }

                                  // controller.uploadDraftpost();

                                  // }
                                },
                              ),
                              // SizedBox(
                              //   height: screenHeigth * 0.020,
                              // ),
                            ],
                          ),
                        ),
                        // Obx(() => controller.isLoading.value == true
                        //     ? Align(
                        //         alignment: Alignment.center,
                        //         child: Lottie.asset("assets/files/loading.json"))
                        //     : Visibility(visible: false, child: Container())),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: screenHeigth * 0.015,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Create a job",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeigth * 0.017,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff00602B),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Job title *",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeigth * 0.017,
                                      color: Color(0xff00602B),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Container(
                                height: screenHeigth * 0.070,
                                width: screenWidth - 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xffC4C4C4), width: 2),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenHeigth * 0.019,
                                      right: screenHeigth * 0.019),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Abc job title",
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    minLines: 1,
                                    maxLines: 3,
                                    onChanged: (value) {
                                      controller.postTitle.value =
                                          value.toString();
                                    },
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: screenHeigth * 0.030,
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Departments *",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeigth * 0.017,
                                      color: Color(0xff00602B),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                  ),
                                  hint: Text("Select Departments"),
                                  onChanged: (val) {
                                    // controller.postType.value = val.toString();
                                    setState(
                                        () => selectedItem = val.toString());
                                    print(controller.postType.value.toString());
                                  },
                                  value: this.selectedItem,
                                  items: dropDownPostItem.map((quantityValue) {
                                    return DropdownMenuItem(
                                        value: quantityValue,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: screenHeigth * 0.019),
                                          child: Text(
                                            quantityValue,
                                            style: GoogleFonts.poppins(
                                                fontSize: 15.0),
                                          ),
                                        ));
                                  }).toList(),
                                ),
                              ),

                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Job descriptions *",
                                    style: GoogleFonts.poppins(
                                      fontSize: screenHeigth * 0.017,
                                      color: Color(0xff00602B),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              //....................................................Job Description Box start
                              Container(
                                height: screenHeigth * 0.35,
                                width: screenWidth - 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color(0xffC4C4C4), width: 2),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenHeigth * 0.019,
                                      right: screenHeigth * 0.019),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                    keyboardType: TextInputType.text,
                                    minLines: 1,
                                    maxLines: 30,
                                    onChanged: (value) {
                                      controller.postDescription.value =
                                          value.toString();
                                    },
                                  ),
                                ),
                              ),
                              //....................................................Job Description Box End
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Job Type *",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeigth * 0.017,
                                          color: Color(0xff00602B),
                                        ),
                                      ),
                                      Container(
                                        height: screenHeigth * 0.070,
                                        width: screenWidth * 0.400,
                                        // decoration: BoxDecoration(
                                        //   borderRadius:
                                        //       BorderRadius.circular(10),
                                        //   border: Border.all(
                                        //       color: Color(0xffC4C4C4),
                                        //       width: 2),
                                        // ),
                                        // width: double.infinity,
                                        child: DropdownButton<String>(
                                          // underline: SizedBox(),
                                          isExpanded: true,
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                          ),
                                          // hint: Text("Select Category"),
                                          onChanged: (val) {
                                            // controller.postType.value = val.toString();
                                            setState(() =>
                                                selectedItem = val.toString());
                                            print(controller.postType.value
                                                .toString());
                                          },
                                          value: this.selectedItem,
                                          items: dropDownPostItem
                                              .map((quantityValue) {
                                            return DropdownMenuItem(
                                                value: quantityValue,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          screenHeigth * 0.019),
                                                  child: Text(
                                                    quantityValue,
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 15.0),
                                                  ),
                                                ));
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Job Location *",
                                        style: GoogleFonts.poppins(
                                          fontSize: screenHeigth * 0.017,
                                          color: Color(0xff00602B),
                                        ),
                                      ),
                                      Container(
                                        height: screenHeigth * 0.070,
                                        width: screenWidth * 0.400,
                                        // decoration: BoxDecoration(
                                        //   borderRadius:
                                        //       BorderRadius.circular(10),
                                        //   border: Border.all(
                                        //       color: Color(0xffC4C4C4),
                                        //       width: 2),
                                        // ),
                                        // width: double.infinity,
                                        child: DropdownButton<String>(
                                          // underline: SizedBox(),
                                          isExpanded: true,
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                          ),
                                          // hint: Text("Select Category"),
                                          onChanged: (val) {
                                            // controller.postType.value = val.toString();
                                            setState(() =>
                                                selectedItem = val.toString());
                                            print(controller.postType.value
                                                .toString());
                                          },
                                          value: this.selectedItem,
                                          items: dropDownPostItem
                                              .map((quantityValue) {
                                            return DropdownMenuItem(
                                                value: quantityValue,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          screenHeigth * 0.019),
                                                  child: Text(
                                                    quantityValue,
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 15.0),
                                                  ),
                                                ));
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeigth * .020,
                              ),
                              GestureDetector(
                                onTap: () async {},
                                child: Container(
                                  height: screenHeigth * 0.080,
                                  width: screenWidth - 20,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xff0FA958),
                                    ),
                                    // color: Color(0xff27AE60),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Upload File',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: screenHeigth * 0.020,
                                            color: Color(0xff0FA958)),
                                      ),
                                      Text(
                                        '(any supporting document)',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: screenHeigth * 0.015,
                                            color: Color(0xff0FA958)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeigth * .020,
                              ),

                              GestureDetector(
                                onTap: () async {},
                                child: Container(
                                  height: screenHeigth * 0.080,
                                  width: screenWidth - 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xff27AE60),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Attach Image / Upload Image',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: screenHeigth * 0.020,
                                            color: Color(0xffFFFFFF)),
                                      ),
                                      Text(
                                        '(.jpg .jpeg .png .gif only)',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w400,
                                            fontSize: screenHeigth * 0.015,
                                            color: Color(0xffFFFFFF)),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),

                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),

                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              ToggleSwitch(
                                cornerRadius: 10,
                                minWidth: screenWidth * 0.400,
                                minHeight: screenHeigth * 0.070,
                                fontSize: screenHeigth * 0.018,
                                initialLabelIndex: 1,
                                activeBgColor: [
                                  Color(
                                    0xff00602B,
                                  )
                                ],
                                activeFgColor: Colors.white,
                                inactiveBgColor: Color(0xff0FA958),
                                inactiveFgColor: Colors.white,
                                totalSwitches: 2,
                                labels: ['Draft', 'Post'],
                                onToggle: (index) async {
                                  print('switched to: $index');
                                  // if (index == 1) {
                                  // if (controller.postTitle.value == '' &&
                                  //     controller.postType.value == '' &&
                                  //     controller.postDescription.value == '') {
                                  //   Get.snackbar(
                                  //     "Error",
                                  //     "Fill up all the field",
                                  //     colorText: Colors.white,
                                  //     backgroundColor: Color(0xff00602B),
                                  //     snackPosition: SnackPosition.BOTTOM,
                                  //   );
                                  // } else if (controller.postTitle.value == '' ||
                                  //     controller.postType.value == '' ||
                                  //     controller.postDescription.value == '') {
                                  //   Get.snackbar(
                                  //     "Error",
                                  //     "Fill up all the field",
                                  //     colorText: Colors.white,
                                  //     backgroundColor: Color(0xff00602B),
                                  //     snackPosition: SnackPosition.BOTTOM,
                                  //   );
                                  // } else {
                                  //   await controller.uploadDraftpost();
                                  // }

                                  // controller.uploadDraftpost();

                                  // }
                                },
                              ),
                              // SizedBox(
                              //   height: screenHeigth * 0.020,
                              // ),
                            ],
                          ),
                        ),
                        // Obx(() => controller.isLoading.value == true
                        //     ? Align(
                        //         alignment: Alignment.center,
                        //         child: Lottie.asset("assets/files/loading.json"))
                        //     : Visibility(visible: false, child: Container())),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: screenHeigth * 0.015,
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Container(
                                height: screenHeigth * 0.070,
                                width: screenWidth - 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffE5E5E5),
                                      blurRadius: 5.0, // soften the shadow
                                      spreadRadius: 3.0, //extend the shadow
                                      offset: Offset(
                                        0.0, // Move to right 5  horizontally
                                        0.0, // Move to bottom 5 Vertically
                                      ),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(
                                  //   color: Color(0xffC4C4C4),
                                  //   width: 2,
                                  // ),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Expanded(
                                        flex: 1,
                                        child: Icon(
                                          Icons.search,
                                          size: screenHeigth * 0.045,
                                          color: Color(0xff777777),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenHeigth * 0.030,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.calendar_month),
                                  SizedBox(
                                    width: screenWidth * 0.020,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      pickDateRange();
                                    },
                                    child: Text(
                                        '${start.year}  ${start.month.toString()}  ${start.day}'),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.010,
                                  ),
                                  Text("-"),
                                  SizedBox(
                                    width: screenWidth * 0.010,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      pickDateRange();
                                    },
                                    child: Text(
                                        '${end.year}  ${end.month}  ${end.day}'),
                                  ),
                                  Spacer(),
                                  Text("All post"),
                                  SizedBox(
                                    width: screenWidth * 0.010,
                                  ),
                                  Icon(
                                    Icons.filter_list,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
