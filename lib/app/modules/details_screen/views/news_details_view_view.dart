import 'package:aust_textile_alumni/app/utill/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsDetailsView extends GetView {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'News',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xff0FA958),
                fontSize: screenHeight * 0.015
            ),
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(
          left: screenHeight * 0.020,
          right: screenHeight * 0.020,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Divider(
                color: titleTextColor,
                thickness: 1.0,
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "World textile fair comming soon".toUpperCase(),
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.017,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                      Text(
                        "Friday, January 17, 2020",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.016,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: screenHeight * 0.050,
                    width: screenWidth * 0.250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffEFEFEF),
                    ),
                    child: Center(
                      child: Text(
                        "Textile",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: screenHeight * 0.018,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.020,
                  ),
                  Container(
                    height: screenHeight * 0.050,
                    width: screenWidth * 0.250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffEFEFEF),
                    ),
                    child: Center(
                      child: Text(
                        "Fair",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: screenHeight * 0.018,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.020,
              ),

              Container(
                height: screenHeight * 0.250,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/newsdetails.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(
                height: screenHeight * 0.030,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec semper justo in sem fermentum malesuada. Phasellus sed turpis sit amet ipsum imperdiet fringilla. Aliquam nulla lorem, pulvinar ac sollicitudin eget, luctus eget mauris. Integer sit amet mauris convallis, rutrum metus vitae, sollicitudin erat. Praesent mauris ante, vulputate ut eros vel, luctus ullamcorper dolor. Morbi congue interdum nibh, quis pellentesque elit bibendum eu. Aliquam ut dolor neque. Aliquam mattis justo non tincidunt ultricies.",
                  style: GoogleFonts.poppins(
                    fontSize: screenHeight * 0.017,
                    color: Color(0xff828282),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              // venue & Note section.........................
              SizedBox(
                height: screenHeight * 0.030,
              ),
              Divider(
                thickness: 2,
                color: Color(0xffBDBDBD),
              ),
              SizedBox(
                height: screenHeight * 0.030,
              ),
              Row(
                children: [
                  Text(
                    "Relevant",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeight * 0.020,
                      color: Color(0xff4F4F4F),
                    ),
                  ),
                ],
              ),
              Container(
                height: screenHeight * 0.250,
                width: screenWidth - 10,
                decoration: BoxDecoration(

                  // color: Colors.grey.shade100,
                ),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Card(
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade100,
                                  blurRadius: 4.0,
                                  spreadRadius: 4.0,
                                  offset: Offset(
                                    0.0,
                                    10.0,
                                  ), // shadow direction: bottom right
                                ),
                                // BoxShadow(
                                //   color: Colors.grey.shade100,
                                //   blurRadius: 2.0,
                                //   spreadRadius: 2.0,
                                //   offset: Offset(
                                //     10.0,
                                //     0.0,
                                //   ), // shadow direction: bottom right
                                // ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            // height: screenHeigth * 0.200,
                            width: screenWidth * 0.380,
                            // color: Colors.white,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, index) {
                      return SizedBox(
                        width: 5,
                      );
                    },
                    itemCount: 10),
              ),
              SizedBox(
                height: screenHeight * 0.080,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
