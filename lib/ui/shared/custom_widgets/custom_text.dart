import 'package:flutter/material.dart';
import 'package:impty_project/ui/shared/utils.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.textColor,
    this.fontWeight,
    required this.textsize,
    this.textDecoration,
    this.textAlign,
    this.container,
  });

  final String text;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final Color textColor;
  final double textsize;
  final FontWeight? fontWeight;
  final Container? container;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (container != null) ...[
          container!,
          SizedBox(width: screenWidth(60)),
        ],
        Text(
          text,
          textAlign: textAlign,
          style: TextStyle(
            decoration: textDecoration,
            fontSize: textsize,
            fontWeight: fontWeight ?? FontWeight.bold,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
