import 'package:aust_textile_alumni/app/modules/details_screen/views/news_details_view_view.dart';
import 'package:aust_textile_alumni/app/modules/details_screen/views/notice_details_view_view.dart';
import 'package:aust_textile_alumni/app/modules/details_screen/views/upcoming_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHorizontalList extends StatefulWidget {
  late double containerHeight;
  late double containerWidth;
  var viewType;

  CustomHorizontalList(double cHeight, double cWidth, view_type) {
    this.containerHeight = cHeight;
    this.containerWidth = cWidth;
    this.viewType = view_type;
  }

  @override
  State<CustomHorizontalList> createState() =>
      _CustomHorizontalListState(containerHeight, containerWidth, viewType);
}

class _CustomHorizontalListState extends State<CustomHorizontalList> {
  late double containerHeight;
  late double containerWidth;
  var viewType;

  _CustomHorizontalListState(double cHeight, double cWidth, view_type) {
    this.containerHeight = cHeight;
    this.containerWidth = cWidth;
    this.viewType = view_type;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                viewType == "upcoming"
                    ? Get.to(() => UpcomingDetailsView())
                    : viewType == "latest news"
                        ? Get.to(() => NewsDetailsView())
                        : Get.to(() => NoticeDetailsView());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0xFFffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffE5E5E5),
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 5  horizontally
                          0.0, // Move to bottom 5 Vertically
                        ),
                      ),
                    ],
                  ),
                  height: containerHeight,
                  width: containerWidth,
                  child: Center(
                    child: Text(
                      'Bannar',
                      style: GoogleFonts.poppins(fontSize: 25.0),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
