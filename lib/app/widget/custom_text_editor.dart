import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter/material.dart';

class CustomTextEditor extends StatefulWidget {
  double screenHeight, screenWidth;
  CustomTextEditor(this.screenHeight, this.screenWidth);

  @override
  State<CustomTextEditor> createState() =>
      _CustomTextEditorState(screenHeight, screenWidth);
}

class _CustomTextEditorState extends State<CustomTextEditor> {
  double screenHeight, screenWidth;

  _CustomTextEditorState(this.screenHeight, this.screenWidth);

  @override
  Widget build(BuildContext context) {
    QuillController controller = QuillController.basic();

    return Container(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 5,
            right: 5,
            top: 10,
            bottom: 10,
          ),
          child: QuillToolbar.basic(controller: controller),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: screenHeight * 0.35,
            width: screenWidth - 20,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color(0xffC4C4C4),
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: QuillEditor.basic(controller: controller, readOnly: false),
            ),
          ),
        ),
        Divider(
          thickness: 2,
        ),
      ],
    ));
  }
}

// Widget customTextEditor(double screenHeight, double screenWidth) {
//   QuillController controller = QuillController.basic();
//   return Container(
//     child: Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: screenHeight * 0.35,
//             width: screenWidth - 20,
//             decoration: BoxDecoration(
//               border: Border.all(
//                 width: 2,
//                 color: Color(0xffC4C4C4),
//               ),
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.white,
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: QuillEditor.basic(controller: controller, readOnly: false),
//             ),
//           ),
//         ),
//         Divider(
//           thickness: 2,
//         ),
//         Padding(
//           padding: EdgeInsets.all(10),
//           child: QuillToolbar.basic(controller: controller),
//         ),
//       ],
//     ),
//   );
// }
