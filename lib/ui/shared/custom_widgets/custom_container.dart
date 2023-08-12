import 'package:flutter/material.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_icon.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/utils.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      this.imageName,
      this.imageSize,
      this.imageColor,
      required this.text,
      required this.textsize,
      required this.textColor});
  final String? imageName;
  final Color textColor;
  final double? imageSize;
  final Color? imageColor;
  final String text;
  final double textsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            screenWidth(50),
          ),
          color: AppColors.mainSkyColor),
      child: Row(
        children: [
          CustomText(text: text, textColor: textColor, textsize: textsize),
          CustomIcon(
            imageName: 'assets/images/$imageName.svg',
            imageSize: imageSize,
            colorIcon: imageColor,
          ),
        ],
      ),
    );
  }
}
