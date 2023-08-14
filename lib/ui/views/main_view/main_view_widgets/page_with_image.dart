import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/utils.dart';

class PageWithImage extends StatelessWidget {
  const PageWithImage({
    super.key,
    required this.page,
    this.text,
    this.imageName,
    this.textColor,
  });
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
              ClipPath(
                clipper: LClipper(),
                child: Container(
                  width: screenWidth(1),
                  height: screenHeight(5.9),
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(
                    'assets/images/Background objects.svg',
                    fit: BoxFit.fitWidth,
                    width: screenWidth(1),
                  ),
                  decoration: BoxDecoration(color: AppColors.mainPurpleColor),
                ),
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

class LClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.9956692);
    path_0.cubicTo(
        size.width * 0.1023160,
        size.height * 0.6877908,
        size.width * 0.3315975,
        size.height * 0.7502392,
        size.width * 0.4827750,
        size.height * 0.7914154);
    path_0.lineTo(size.width * 0.4827800, size.height * 0.7914154);
    path_0.cubicTo(
        size.width * 0.4872275,
        size.height * 0.7926308,
        size.width * 0.4916075,
        size.height * 0.7938231,
        size.width * 0.4959150,
        size.height * 0.7949846);
    path_0.cubicTo(
        size.width * 0.5370950,
        size.height * 0.8061231,
        size.width * 0.5762375,
        size.height * 0.8183692,
        size.width * 0.6133025,
        size.height * 0.8299692);
    path_0.cubicTo(
        size.width * 0.7922475,
        size.height * 0.8859615,
        size.width * 0.9227175,
        size.height * 0.9267923,
        size.width,
        size.height * 0.7537508);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height * 0.9956692);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
