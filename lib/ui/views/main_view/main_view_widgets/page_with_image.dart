// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
// import 'package:impty_project/ui/shared/utils.dart';

// class PageWithImage extends StatelessWidget {
//   PageWithImage(
//       {required this.page, this.text, this.imageName, this.textColor});
//   final Widget page;
//   final String? text;
//   final String? imageName;
//   final Color? textColor;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Stack(
//           children: [
//             CustomImages(
//               imageName: 'shapeMaker',
//               imageSize: screenHeight(5.47),
//             ),
//           ],
//         ),

//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   children: [
//         //     if (imageName != null) ...[
//         //       SvgPicture.asset('images/$imageName.svg'),
//         //       SizedBox(
//         //         width: screenWidth(20),
//         //       ),
//         //     ],
//         //     Text(
//         //       text ?? '',
//         //       style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
//         //     ),
//         //   ],
//         // ),
//         // Page Content
//         Expanded(child: page),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/utils.dart';

class PageWithImage extends StatelessWidget {
  const PageWithImage(
      {super.key,
      required this.page,
      this.text,
      this.imageName,
      this.textColor});
  final Widget page;
  final String? text;
  final String? imageName;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                'assets/images/shapeMaker.svg',
                height: screenHeight(5.47),
              ),
              SizedBox(
                height: screenHeight(5),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: screenHeight(20), horizontal: screenWidth(20)),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/$imageName.svg',
                        color: AppColors.mainWhiteColor,
                      ),
                      SizedBox(
                        width: screenWidth(30),
                      ),
                      CustomText(
                          text: text ?? '',
                          textColor: AppColors.mainWhiteColor,
                          textsize: screenWidth(25)),
                    ],
                  ),
                ),
              ),
              page,
            ],
          ),
        ],
      ),
    );
  }
}
