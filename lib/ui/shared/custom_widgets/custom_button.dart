import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.onPressed,
      this.backgroundColor,
      required this.text,
      this.textColor = const Color.fromRGBO(252, 252, 252, 1), //لازم شيل اللون
      this.borderColor,
      this.imageName})
      : super(key: key);

  final Function? onPressed;
  final Color? backgroundColor;
  final String text;
  final String? imageName;
  final Color? textColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {
        if (onPressed != null) onPressed!();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imageName != null) ...[
            SvgPicture.asset('images/$imageName.svg'),
            SizedBox(
              width: size.width * 0.05,
            ),
          ],
          Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(size.width, screenHeight(15)),
        // shape: StadiumBorder(),
        backgroundColor: backgroundColor ?? AppColors.mainPurpleColor,
        side: borderColor != null
            ? BorderSide(
                width: 1.0,
                color: borderColor!,
              )
            : null,
      ),
    );
  }
}
