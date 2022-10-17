import 'package:aust_textile_alumni/app/utill/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationDrawer extends StatefulWidget {
  // const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    var scrrenHeight = MediaQuery.of(context).size.height;
    var scrrenWidth = MediaQuery.of(context).size.width;
    return Drawer(
      width: scrrenWidth * 0.55,
      child: Container(
        child: Column(
          children: [
            Container(
              height: scrrenHeight * 0.27,
              color: Color(0xff00602B),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: scrrenHeight * 0.027),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: scrrenHeight * 0.045,
                      backgroundImage:
                          AssetImage('assets/images/dummy_profile.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: scrrenHeight * 0.010,
                        left: scrrenHeight * 0.017,
                        right: scrrenHeight * 0.017),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1.0,
                    ),
                  ),
                  Text(
                    "Anika Rahman",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: scrrenHeight * 0.017,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: scrrenHeight * 0.017,
                        right: scrrenHeight * 0.017),
                    child: Divider(
                      color: Colors.white,
                      thickness: 1.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: scrrenHeight * 0.010,
                    ),
                    child: Text(
                      "Student",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: scrrenHeight * 0.015,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: scrrenHeight * 0.010,
                    ),
                    child: Text(
                      "Tex Batch 22",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: scrrenHeight * 0.015,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: scrrenHeight * 0.015,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                  child: Image.asset('assets/images/profile_icon.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                  child: Text(
                    'My Profile',
                    style: GoogleFonts.poppins(
                        color: Colors.grey, fontSize: scrrenHeight * 0.013),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color: Colors.grey,
                  size: scrrenHeight * 0.020,
                )
              ],
            ),
            SizedBox(
              height: scrrenHeight * 0.012,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                  child: Image.asset('assets/images/profile_search_icon.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                  child: Text(
                    'Find an alumni',
                    style: GoogleFonts.poppins(
                        color: Colors.grey, fontSize: scrrenHeight * 0.013),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: scrrenHeight * 0.012,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                  child: Image.asset('assets/images/shout_icon.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                  child: Text(
                    'Shout',
                    style: GoogleFonts.poppins(
                        color: Colors.grey, fontSize: scrrenHeight * 0.013),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: scrrenHeight * 0.15,
                  left: scrrenHeight * 0.025,
                  right: scrrenHeight * 0.025),
              child: Divider(
                color: titleTextColor,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                      child: Image.asset('assets/images/link_icon.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                      child: Text(
                        'Quick Links ..',
                        style: TextStyle(
                            color: Colors.grey, fontSize: scrrenHeight * 0.013),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: scrrenHeight * 0.012),
                      child: Text(
                        '-',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: scrrenHeight * 0.015),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.045),
                      child: Text(
                        "•",
                        style: GoogleFonts.poppins(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                      child: Text(
                        'Link 1',
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: scrrenHeight * 0.013),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.045),
                      child: Text(
                        "•",
                        style: GoogleFonts.poppins(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                      child: Text(
                        'Link 2',
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: scrrenHeight * 0.013),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.045),
                      child: Text(
                        "•",
                        style: GoogleFonts.poppins(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                      child: Text(
                        'Link 3',
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: scrrenHeight * 0.013),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.045),
                      child: Text(
                        "•",
                        style: GoogleFonts.poppins(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                      child: Text(
                        'more ...',
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: scrrenHeight * 0.013),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: scrrenHeight * 0.17,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [drawerBackground_1, drawerBackground_2])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: scrrenHeight * 0.012, top: scrrenHeight * 0.018),
                    child: Text(
                      'Log in IMUS',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: scrrenHeight * 0.014),
                    ),
                  ),
                  SizedBox(
                    height: scrrenHeight * 0.010,
                  ),
                  Container(
                    height: scrrenHeight * 0.045,
                    width: double.infinity,
                    color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: scrrenHeight * 0.012,
                          top: scrrenHeight * 0.012),
                      child: Text(
                        'DONATE',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: scrrenHeight * 0.014),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: scrrenHeight * 0.012,
                      top: scrrenHeight * 0.005,
                    ),
                    child: Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: scrrenHeight * 0.010),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: scrrenHeight * 0.012,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                  child: Image.asset('assets/images/logout_icon.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: scrrenHeight * 0.012),
                  child: Text(
                    'Logout',
                    style: GoogleFonts.poppins(
                        color: Colors.grey, fontSize: scrrenHeight * 0.013),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
