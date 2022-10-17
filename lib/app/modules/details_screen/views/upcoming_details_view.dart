import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utill/app_colors.dart';
import '../controllers/details_screen_controller.dart';

class UpcomingDetailsView extends GetView<DetailsScreenController> {
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
          'Upcomings',
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
                        "AUSTTAA Cricket fiesta 2020",
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
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/ticket.png",
                            height: screenHeight * 0.025,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "20",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4F4F4F),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "৳",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4F4F4F),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.030,
              ),

              Container(
                height: screenHeight * 0.250,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/details.png"),
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
              SizedBox(
                height: screenHeight * 0.040,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    // color: Colors.grey,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Venue & Notes:",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.025,
                          color: Color(0xff777777),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.010,
                      ),
                      Text(
                        "1.    Ashiyan Medical College Hospital, 300 feet.",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.016,
                          color: Color(0xff777777),
                        ),
                      ),
                      Text(
                        "2.    May be participants will not be counted, will be considered as not going.",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.016,
                          color: Color(0xff777777),
                        ),
                      ),
                      Text(
                        "3.    Please send invitation to your batch mates.",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.016,
                          color: Color(0xff777777),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.060,
              ),
              Container(
                height: screenHeight * 0.060,
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
                    Image.asset(
                      "assets/images/ticket.png",
                      height: 30,
                    ),
                    // Text("Buy event ticket"),
                    SizedBox(
                      width: screenWidth * 0.010,
                    ),
                    Text("Buy event ticket",
                        style: GoogleFonts.poppins(
                          fontSize: screenHeight * 0.016,
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
                    Text(
                      "20",
                      style: GoogleFonts.poppins(
                        fontSize: screenHeight * 0.020,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.020,
                    ),
                    Text(
                      "৳",
                      style: GoogleFonts.poppins(
                        fontSize: screenHeight * 0.020,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              Text(
                "Your payment secured with SSL payement gateway ",
                style: GoogleFonts.poppins(
                  fontSize: screenHeight * 0.015,
                  color: Color(0xff828282),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
