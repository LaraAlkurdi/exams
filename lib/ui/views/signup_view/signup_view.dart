import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_icon.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_radio.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/login_view/login_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth(21), vertical: screenHeight(10)),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {}, child: CustomIcon(imageName: 'ic_back')),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 110),
                child: CustomText(
                    text: 'إنشاء حساب',
                    textColor: AppColors.mainTextsColor,
                    textsize: screenWidth(20)),
              ),
            ],
          ),
          SizedBox(
            height: screenWidth(27),
          ),
          CustomImages(
            imageName: 'img_signup',
            imageSize: screenHeight(5),
          ),
          SizedBox(
            height: screenWidth(20),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(end: screenHeight(3)),
            child: CustomText(
                text: 'اسم المستخدم',
                textColor: AppColors.mainPurpleColor,
                textsize: screenWidth(22)),
          ),
          SizedBox(
            height: screenWidth(30),
          ),
          CustomTextField(
            hintext: 'اسم المستخدم',
            colorText: AppColors.mainTextsColor,
          ),
          SizedBox(
            height: screenWidth(34),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(end: screenHeight(2.7)),
            child: CustomText(
                text: 'رقم موبايل',
                textColor: AppColors.mainPurpleColor,
                textsize: screenWidth(22)),
          ),
          SizedBox(
            height: screenWidth(30),
          ),
          CustomTextField(
            colorText: AppColors.mainTextsColor,
            hintext: ' رقم الموبايل',
          ),
          SizedBox(
            height: screenWidth(20),
          ),
          Row(
            children: [
              Customradio(
                text: 'كلية الطب ',
              ),
              Customradio(
                text: 'كلية الطب ',
              ),
              Customradio(
                text: 'كلية الطب ',
              )
            ],
          ),
        ]),
      ),
    );
  }
}
