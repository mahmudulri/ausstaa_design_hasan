import 'package:aust_textile_alumni/app/modules/alumni_book/views/alumni_book_view.dart';
import 'package:aust_textile_alumni/app/routes/app_pages.dart';
import 'package:aust_textile_alumni/app/utill/app_colors.dart';
import 'package:aust_textile_alumni/app/widget/alumni_list.dart';
import 'package:aust_textile_alumni/app/widget/custom_horizantal_list.dart';
import 'package:aust_textile_alumni/app/widget/horizontal_list.dart';
import 'package:aust_textile_alumni/app/widget/job_list.dart';
import 'package:aust_textile_alumni/app/widget/navigation_drawer.dart';
import 'package:aust_textile_alumni/app/widget/title_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: NavigationDrawer(),
        floatingActionButton: Container(
          height: screenHeight * 0.06,
          decoration: BoxDecoration(
            border: Border.all(
              color: titleTextColor, //color of border
              width: 3, //width of border
            ),
            shape: BoxShape.circle,
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              Get.toNamed(Routes.USER_POST);
            },
            child: Center(
              child: Image.asset(
                'assets/images/floating_icon.png',
                height: screenHeight * 0.050,
                width: screenHeight * 0.050,
              ),
            ),
          ),
        ),
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenHeight * 0.019,
                            top: screenHeight * 0.019),
                        child: GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          child: Image.asset('assets/images/bar_icon.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenHeight * 0.030,
                            top: screenHeight * 0.019),
                        child: Image.asset(
                          "assets/images/logo.png",
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                            right: screenHeight * 0.019,
                            top: screenHeight * 0.019),
                        child: Image.asset(
                          "assets/images/search_icon.png",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: screenHeight * 0.019,
                            top: screenHeight * 0.019),
                        child: Image.asset(
                          "assets/images/bell_icon.png",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenHeight * 0.025,
                        right: screenHeight * 0.025),
                    child: Divider(
                      color: titleTextColor,
                      height: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.010,
                  ),
                  // first Banner................................../ First Banner..........///////////
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color(0xFFffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffE5E5E5),
                          blurRadius: 8.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 5  horizontally
                            10.0, // Move to bottom 5 Vertically
                          ),
                        ),
                      ],
                    ),

                    height: screenHeight * 0.30,
                    width: screenWidth,
                    margin: EdgeInsets.only(bottom: 6.0),
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    // ),
                    child: Center(
                      child: Text(
                        'Bannar',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  //............................................Up Coming ............................./
                  Padding(
                    padding: EdgeInsets.only(left: screenHeight * 0.019),
                    child: Row(
                      children: [
                        customTitleText('Upcomings', screenHeight * 0.025),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: screenHeight * 0.019),
                          child:
                              customTitleText('view all', screenHeight * 0.018),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenHeight * 0.019),
                    child: CustomHorizontalList(
                        screenHeight * 0.20, screenHeight * 0.42, 'upcoming'),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenHeight * 0.019),
                    child: Row(
                      children: [
                        customTitleText('Latest News', screenHeight * 0.025),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: screenHeight * 0.019),
                          child:
                              customTitleText('view all', screenHeight * 0.018),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenHeight * 0.019),
                    child: CustomHorizontalList(screenHeight * 0.25,
                        screenHeight * 0.35, 'latest news'),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenHeight * 0.019),
                    child: Row(
                      children: [
                        customTitleText('Notices', screenHeight * 0.025),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: screenHeight * 0.019),
                          child:
                              customTitleText('view all', screenHeight * 0.018),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenHeight * 0.019),
                    child: CustomHorizontalList(
                        screenHeight * 0.25, screenHeight * 0.35, 'notice'),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenHeight * 0.019),
                    child: Row(
                      children: [
                        customTitleText('Jobs', screenHeight * 0.025),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: screenHeight * 0.019),
                          child:
                              customTitleText('view all', screenHeight * 0.018),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenHeight * 0.019,
                      right: screenHeight * 0.019,
                    ),
                    child: Expanded(child: JobList()),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenHeight * 0.019),
                    child: Row(
                      children: [
                        customTitleText('Shout', screenHeight * 0.025),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: screenHeight * 0.019),
                          child:
                              customTitleText('view all', screenHeight * 0.018),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenHeight * 0.019,
                      right: screenHeight * 0.019,
                    ),
                    child: Expanded(child: HorizontalList()),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenHeight * 0.019),
                    child: Row(
                      children: [
                        customTitleText('Alumni', screenHeight * 0.025),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: screenHeight * 0.019),
                          child:
                              customTitleText('view all', screenHeight * 0.018),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.020,
                  ),
                  AlumniList('home')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
