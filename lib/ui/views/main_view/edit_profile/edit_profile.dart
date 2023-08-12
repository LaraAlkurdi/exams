import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:impty_project/core/utils/string_util.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/main_view/edit_profile/edit_controller.dart';
import 'package:impty_project/ui/views/main_view/profile_view/profile_view.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  EditController controller = Get.put(EditController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: LandingClipper(),
              child: Container(
                width: screenWidth(1),
                height: screenHeight(4.6),
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  'assets/images/Background objects.svg',
                  fit: BoxFit.fitWidth,
                  width: screenWidth(1),
                ),
                decoration: BoxDecoration(color: AppColors.mainPurpleColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: screenHeight(20), horizontal: screenWidth(20)),
              child: Column(
                children: [
                  CustomText(
                      text: 'اسم المستخدم',
                      textColor: AppColors.mainPurpleColor,
                      textsize: screenWidth(20)),
                  SizedBox(
                    height: screenHeight(30),
                  ),
                  CustomTextField(
                    hintext: 'اسم المستخدم',
                    colorText: AppColors.mainPurpleColor,
                    prefixImage: 'ic_user',
                    prefixColor: AppColors.mainPurpleColor,
                    suffixImage: 'ic_edit',
                    suffixColor: AppColors.mainPurpleColor,
                    controller: controller.userController,
                    validator: (value) {
                      if (value!.isEmpty || MapUtil.isName(value)) {
                        return 'please Enter your Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: screenHeight(30),
                  ),
                  CustomText(
                      text: 'رقم الهاتف',
                      textColor: AppColors.mainPurpleColor,
                      textsize: screenWidth(20)),
                  SizedBox(
                    height: screenHeight(30),
                  ),
                  CustomTextField(
                    hintext: 'رقم الهاتف',
                    colorText: AppColors.mainPurpleColor,
                    prefixImage: 'ic_phone',
                    prefixColor: AppColors.mainPurpleColor,
                    suffixImage: 'ic_edit',
                    suffixColor: AppColors.mainPurpleColor,
                    controller: controller.userController,
                    validator: (value) {
                      if (value!.isEmpty || MapUtil.isValidNumber(value)) {
                        return 'please check your Number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: screenHeight(15),
                  ),
                  CustomButton(
                      onPressed: () {
                        Get.back();
                      },
                      text: 'حفظ التغييرات'),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth(2.5),
                          vertical: screenHeight(90)),
                      child: CustomText(
                          text: 'تراجع',
                          textDecoration: TextDecoration.underline,
                          textColor: AppColors.mainPurpleColor,
                          textsize: screenWidth(22)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LandingClipper extends CustomClipper<Path> {
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
