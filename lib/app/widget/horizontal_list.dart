import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalList extends StatefulWidget {
  // const HorizontalList({Key? key}) : super(key: key);

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var containerWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.28,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE5E5E5),
                      blurRadius: 5.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(
                        0.0, // Move to right 5  horizontally
                        0.0, // Move to bottom 5 Vertically
                      ),
                    ),
                  ],
                ),
                height: screenHeight * 0.25,
                width: screenHeight * 0.42,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: screenHeight * 0.019),
                      child: Image.asset(
                        'assets/images/dummy_profile.jpg',
                        fit: BoxFit.cover,
                        height: screenHeight * 0.22,
                        width: screenHeight * 0.10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.030,
                          left: screenHeight * 0.015),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Mostofa Chowdhury',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: screenHeight * 0.015),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: screenHeight * 0.014),
                                child: Text(
                                  '3 oct 2022',
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontSize: screenHeight * 0.014),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.025,
                          ),
                          Container(
                            width: screenHeight * 0.28,
                            height: screenHeight * 0.16,
                            child: Text(
                              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 6,
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  // fontWeight: FontWeight.w700,
                                  fontSize: screenHeight * 0.014),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
