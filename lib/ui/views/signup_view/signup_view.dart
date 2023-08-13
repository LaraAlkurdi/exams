import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_icon.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_radio.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/login_view/login_controller.dart';
import 'package:impty_project/ui/views/login_view/login_view.dart';
import 'package:impty_project/ui/views/main_view/main_view.dart';
import 'package:impty_project/ui/views/signup_view/signup_controller.dart';

class SignUpView extends StatefulWidget {
  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(15),
          vertical: screenHeight(20),
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(LoginView());
                  },
                  child: CustomIcon(
                    imageName: 'ic_back',
                  ),
                ),
                SizedBox(
                  width: screenWidth(3.6),
                ),
                CustomText(
                    text: 'إنشاء حساب',
                    fontWeight: FontWeight.bold,
                    textColor: AppColors.mainTextsColor,
                    textsize: screenWidth(20)),
              ],
            ),
            SizedBox(height: screenHeight(35)),
            CustomImages(
              imageName: 'img_signup',
              imageSize: screenHeight(6),
            ),
            SizedBox(
              height: screenWidth(20),
            ),
            CustomText(
                text: 'اسم المستخدم',
                textColor: AppColors.mainPurpleColor,
                textsize: screenWidth(25)),
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
                  textsize: screenWidth(25)),
            ),
            SizedBox(
              height: screenWidth(30),
            ),
            CustomTextField(
              colorText: AppColors.mainTextsColor,
              hintext: ' رقم الموبايل',
            ),
            SizedBox(
              height: screenWidth(30),
            ),
            CustomText(
                text: 'اختر الإختصاص:',
                textColor: AppColors.mainPurpleColor,
                textsize: screenWidth(25)),
            Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // mainAxisSpacing: 0.0,
                  mainAxisExtent: 50.0,
                ),
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  final item = controller.items[index];
                  return InkWell(
                    onTap: () {
                      controller.selectItem(index);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.selectItem(index);
                          },
                          child: Container(
                            width: screenWidth(20),
                            height: screenHeight(20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppColors.mainPurpleColor),
                              shape: BoxShape.circle,
                              color: item.isSelected.value
                                  ? AppColors.mainPurpleColor
                                  : AppColors.mainWhiteColor,
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth(20)),
                        CustomText(
                            text: item.text,
                            textColor: AppColors.mainTextsColor,
                            textsize: screenWidth(30)),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: screenWidth(30),
            ),
            InkWell(
              onTap: () {
                // Get.off(MainView());
              },
              child: CustomButton(text: 'إنشاء حساب'),
            ),
            SizedBox(
              height: screenWidth(60),
            ),
            InkWell(
              onTap: () {
                Get.to(LoginView());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: 'لديك حساب؟',
                      textColor: AppColors.mainTextGreyColor,
                      textsize: screenWidth(24)),
                  SizedBox(
                    width: screenWidth(70),
                  ),
                  CustomText(
                      text: 'تسجيل دخول',
                      textColor: AppColors.mainPurpleColor2,
                      textsize: screenWidth(24)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
