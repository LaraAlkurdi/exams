import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintext,
    this.controller,
    this.validator,
    this.suffixImage,
    this.prefixImage,
    this.imageName,
    this.suffixColor,
    this.prefixColor,
    required this.colorText,
    this.keyboardType,
  }) : super(key: key);
  final Color? suffixColor;
  final Color? prefixColor;
  final String? imageName;
  final String hintext;
  final Color colorText;
  final String? suffixImage;
  final String? prefixImage;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: Transform.scale(
            scale: 0.5,
            child: SvgPicture.asset(
              'assets/images/$suffixImage.svg',
              color: suffixColor,
              width: screenWidth(30),
              height: screenHeight(30),
            )),
        prefixIcon: Transform.scale(
          scale: 0.5,
          child: SvgPicture.asset(
            'assets/images/$prefixImage.svg',
            color: prefixColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: screenHeight(50),
          horizontal: screenWidth(60),
        ),
        filled: true,
        fillColor: AppColors.mainSkyColor,
        hintText: hintext,
        hintStyle: TextStyle(
          color: colorText,
          fontSize: screenWidth(25),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(screenWidth(50))),
        ),
      ),
      keyboardType: keyboardType ?? TextInputType.text,
    );
  }
}
