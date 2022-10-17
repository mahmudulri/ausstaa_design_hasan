import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// import 'dart:io';
// import 'package:aust_textile_alumni/app/modules/user_post/controllers/user_post_controller.dart';
// import 'package:aust_textile_alumni/app/routes/app_pages.dart';
// import 'package:aust_textile_alumni/app/utill/app_colors.dart';
// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:toggle_switch/toggle_switch.dart';



// class Draftpost extends StatefulWidget {
//   @override
//   State<Draftpost> createState() => _DraftpostState();
// }

// class _DraftpostState extends State<Draftpost> {
//   List<String> dropDownPostItem = [
//     "Menu 1",
//     "Menu 2",
//   ];

//   var selectedItem;

//   DraftpostController controller = Get.put(DraftpostController());
//   @override
//   Widget build(BuildContext context) {
//     var screenWidth = MediaQuery.of(context).size.width;
//     var screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: GestureDetector(
//           onTap: () {
//             Get.toNamed(Routes.HOME);
//           },
//           child: Icon(
//             Icons.arrow_back,
//             color: Colors.black,
//           ),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         centerTitle: true,
//         title: Text(
//           'Job post',
//           style: GoogleFonts.poppins(
//             textStyle: TextStyle(
//                 color: Color(0xff0FA958), fontSize: screenHeight * 0.017),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(
//           left: 20,
//           right: 20,
//         ),
//         child: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Stack(
//             children: [
//               Column(
//                 children: [
//                   Divider(
//                     color: titleTextColor,
//                     thickness: 1.0,
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.015,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Create your post",
//                         style: GoogleFonts.poppins(
//                           fontSize: screenHeight * 0.017,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff00602B),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Category",
//                         style: GoogleFonts.poppins(
//                           fontSize: screenHeight * 0.017,
//                           color: Color(0xff00602B),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                       width: double.infinity,
//                       child: DropdownButton<String>(
//                         isExpanded: true,
//                         icon: Icon(
//                           Icons.arrow_drop_down,
//                         ),
//                         hint: Text("Select Category"),
//                         onChanged: (val) {
//                           // controller.postType.value = val.toString();
//                           setState(() => selectedItem = val.toString());
//                           print(controller.postType.value.toString());
//                         },
//                         value: this.selectedItem,
//                         items: dropDownPostItem.map((quantityValue) {
//                           return DropdownMenuItem(
//                               value: quantityValue,
//                               child: Padding(
//                                 padding:
//                                     EdgeInsets.only(left: screenHeight * 0.019),
//                                 child: Text(
//                                   quantityValue,
//                                   style: GoogleFonts.poppins(fontSize: 15.0),
//                                 ),
//                               ));
//                         }).toList(),
//                       )),
//                   SizedBox(
//                     height: screenHeight * 0.030,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Job title",
//                         style: GoogleFonts.poppins(
//                           fontSize: screenHeight * 0.017,
//                           color: Color(0xff00602B),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),
//                   Container(
//                     height: screenHeight * 0.070,
//                     width: screenWidth - 20,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(color: Color(0xffC4C4C4), width: 2),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           left: screenHeight * 0.019,
//                           right: screenHeight * 0.019),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                         keyboardType: TextInputType.text,
//                         minLines: 1,
//                         maxLines: 3,
//                         onChanged: (value) {
//                           controller.postTitle.value = value.toString();
//                         },
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Your post",
//                         style: GoogleFonts.poppins(
//                           fontSize: screenHeight * 0.017,
//                           color: Color(0xff00602B),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),
//                   Container(
//                     height: screenHeight * 0.35,
//                     width: screenWidth - 20,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(color: Color(0xffC4C4C4), width: 2),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           left: screenHeight * 0.019,
//                           right: screenHeight * 0.019),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                         keyboardType: TextInputType.text,
//                         minLines: 1,
//                         maxLines: 30,
//                         onChanged: (value) {
//                           controller.postDescription.value = value.toString();
//                         },
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),
//                   // Obx(
//                   //   () =>
//                   GestureDetector(
//                     onTap: () async {
//                       // await controller.getImage();
//                     },
//                     child: Container(
//                       height: screenHeight * 0.080,
//                       width: screenWidth - 20,
//                       decoration: BoxDecoration(
//                         color: Color(0xff27AE60),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Attach Image / Upload Image',
//                             style: GoogleFonts.poppins(
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: screenHeight * 0.020,
//                                 color: Color(0xffFFFFFF)),
//                           ),
//                           Text(
//                             '(.jpg .jpeg .png .gif only)',
//                             style: GoogleFonts.poppins(
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: screenHeight * 0.015,
//                                 color: Color(0xffFFFFFF)),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   // ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Tags",
//                         style: GoogleFonts.poppins(
//                           fontSize: screenHeight * 0.017,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),
//                   Container(
//                     height: screenHeight * 0.070,
//                     width: screenWidth - 20,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(color: Color(0xffC4C4C4), width: 2),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           left: screenHeight * 0.019,
//                           right: screenHeight * 0.019),
//                       child: TextFormField(
//                         // controller: controller.chipTextController,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                         ),
//                         keyboardType: TextInputType.text,
//                         minLines: 1,
//                         maxLines: 30,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),

//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),
//                   ToggleSwitch(
//                     cornerRadius: 10,
//                     minWidth: screenWidth * 0.400,
//                     minHeight: screenHeight * 0.070,
//                     fontSize: screenHeight * 0.018,
//                     initialLabelIndex: 1,
//                     activeBgColor: [
//                       Color(
//                         0xff00602B,
//                       )
//                     ],
//                     activeFgColor: Colors.white,
//                     inactiveBgColor: Color(0xff0FA958),
//                     inactiveFgColor: Colors.white,
//                     totalSwitches: 2,
//                     labels: ['Draft', 'Share'],
//                     onToggle: (index) async {
//                       print('switched to: $index');
//                       // if (index == 1) {
//                       // if (controller.postTitle.value == '' &&
//                       //     controller.postType.value == '' &&
//                       //     controller.postDescription.value == '') {
//                       //   Get.snackbar(
//                       //     "Error",
//                       //     "Fill up all the field",
//                       //     colorText: Colors.white,
//                       //     backgroundColor: Color(0xff00602B),
//                       //     snackPosition: SnackPosition.BOTTOM,
//                       //   );
//                       // } else if (controller.postTitle.value == '' ||
//                       //     controller.postType.value == '' ||
//                       //     controller.postDescription.value == '') {
//                       //   Get.snackbar(
//                       //     "Error",
//                       //     "Fill up all the field",
//                       //     colorText: Colors.white,
//                       //     backgroundColor: Color(0xff00602B),
//                       //     snackPosition: SnackPosition.BOTTOM,
//                       //   );
//                       // } else {
//                       //   await controller.uploadDraftpost();
//                       // }

//                       // controller.uploadDraftpost();

//                       // }
//                     },
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   ),
//                 ],
//               ),
//               // Obx(() => controller.isLoading.value == true
//               //     ? Align(
//               //         alignment: Alignment.center,
//               //         child: Lottie.asset("assets/files/loading.json"))
//               //     : Visibility(visible: false, child: Container())),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
