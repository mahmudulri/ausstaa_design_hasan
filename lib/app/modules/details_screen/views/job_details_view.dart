import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utill/app_colors.dart';

class JobDetailsView extends GetView {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
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
          'Jobs',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xff0FA958),
              fontSize: screenHeigth * 0.015
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
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
                height: screenHeigth * 0.015,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Marketing Officer".toUpperCase(),
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.017,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                      Text(
                        "Friday, January 17, 2020",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.016,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screenHeigth * 0.020,
              ),
              Row(
                children: [
                  Container(
                    height: screenHeigth * 0.050,
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
                            fontSize: screenHeigth * 0.018,
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
                    height: screenHeigth * 0.050,
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
                            fontSize: screenHeigth * 0.018,
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
                    height: screenHeigth * 0.050,
                    width: screenWidth * 0.250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffEFEFEF),
                    ),
                    child: Center(
                      child: Text(
                        "Marketing",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: screenHeigth * 0.018,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeigth * 0.020,
              ),

              SizedBox(
                height: screenHeigth * 0.030,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vacancy",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.020,
                          color: Color(0xff4F4F4F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Not specific",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.020,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screenHeigth * 0.020,
              ),
              Row(
                children: [
                  Text(
                    "Job Context",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeigth * 0.020,
                      color: Color(0xff4F4F4F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec semper justo in sem fermentum malesuada. Phasellus sed turpis sit amet ipsum imperdiet fringilla. Aliquam nulla lorem, pulvinar ac sollicitudin eget, luctus eget mauris. Integer sit amet mauris convallis, rutrum metus vitae, sollicitudin erat. Praesent mauris ante, vulputate ut eros vel, luctus ullamcorper dolor. Morbi congue interdum nibh, quis pellentesque elit bibendum eu. Aliquam ut dolor neque. Aliquam mattis justo non tincidunt ultricies.",
                  style: GoogleFonts.poppins(
                    fontSize: screenHeigth * 0.017,
                    color: Color(0xff828282),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeigth * 0.030,
              ),
              Row(
                children: [
                  Text(
                    "Vacancy",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeigth * 0.020,
                      color: Color(0xff4F4F4F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec semper justo in sem fermentum malesuada. Phasellus sed turpis sit amet ipsum imperdiet fringilla. Aliquam nulla lorem, pulvinar ac sollicitudin eget, luctus eget mauris. Integer sit amet mauris convallis, rutrum metus vitae, sollicitudin erat. Praesent mauris ante, vulputate ut eros vel, luctus ullamcorper dolor. Morbi congue interdum nibh, quis pellentesque elit bibendum eu. Aliquam ut dolor neque. Aliquam mattis justo non tincidunt ultricies.",
                  style: GoogleFonts.poppins(
                    fontSize: screenHeigth * 0.017,
                    color: Color(0xff828282),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeigth * 0.030,
              ),

              Divider(
                thickness: 2,
                color: Color(0xffBDBDBD),
              ),
              Row(
                children: [
                  Text(
                    "Employment Status :",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeigth * 0.020,
                      color: Color(0xff4F4F4F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Full-time",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeigth * 0.020,
                      color: Color(0xff4F4F4F),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeigth * 0.010,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Education Requirements",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.020,
                          color: Color(0xff4F4F4F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Bacherlor degree in marketing"),
                      Text("Education may relax if experienced"),
                      Text("Experience Requirements"),
                      Text("1 to 2 year(s)"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screenHeigth * 0.010,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Additional Requirements",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.020,
                          color: Color(0xff4F4F4F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Only males are allowed to apply"),
                      Text("Best preferred if from textile & Packaging "),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: screenHeigth * 0.030,
              ),
              Container(
                height: screenHeigth * 0.080,
                width: screenWidth - 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text("Buy event ticket"),
                    SizedBox(
                      width: screenWidth * 0.010,
                    ),
                    Text("Apply now",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeigth * 0.016,
                          color: Colors.black,
                        )),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                      indent: 8.0,
                      endIndent: 8.0,
                    ),
                    SizedBox(
                      width: screenWidth * 0.010,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "100 %",
                                style: GoogleFonts.poppins(
                                  fontSize: screenHeigth * 0.018,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "complete",
                                style: GoogleFonts.poppins(
                                  fontSize: screenHeigth * 0.018,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
