import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impty_project/core/utils/string_util.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/login_view/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenWidth(15), horizontal: screenWidth(20)),
        child: Form(
          key: controller.formKey,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth(3.9)),
                child: CustomText(
                    textAlign: TextAlign.center,
                    text: 'تسجيل الدخول',
                    textColor: AppColors.mainTextColor,
                    textsize: screenWidth(18)),
              ),
              CustomImages(imageName: 'Login'),
              SizedBox(
                height: screenHeight(30),
              ),
              CustomText(
                  text: 'اسم المستخدم',
                  textColor: AppColors.mainPurpleColor,
                  textsize: screenWidth(20)),
              SizedBox(
                height: screenHeight(90),
              ),
              CustomTextField(
                hintext: 'اسم المستخدم',
                colorText: AppColors.mainTextGreyColor,
                prefixImage: 'ic_user',
                controller: controller.userNameController,
                validator: (value) {
                  if (value!.isEmpty || !MapUtil.isName(value)) {
                    return 'الرجاء إدخال اسم المستخدم';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: screenHeight(90),
              ),
              CustomText(
                  text: 'رمز تسجيل الدخول',
                  textColor: AppColors.mainPurpleColor,
                  textsize: screenWidth(20)),
              SizedBox(
                height: screenHeight(90),
              ),
              CustomTextField(
                hintext: 'رمز تسجيل الدخول',
                colorText: AppColors.mainTextGreyColor,
                prefixImage: 'ic_key',
                suffixColor: AppColors.mainPurpleColor,
                controller: controller.passwordController,
                validator: (value) {
                  if (value!.isEmpty || !MapUtil.isPassword(value)) {
                    return 'الرجاء إدخال رمز تسجيل الدخول';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: screenHeight(20),
              ),
              CustomButton(text: 'تسجيل الدخول'),
              SizedBox(
                height: screenHeight(70),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                        text: 'ليس لديك حساب؟',
                        textColor: AppColors.mainTextGreyColor,
                        textsize: screenWidth(24)),
                    CustomText(
                        text: 'انشأ حسابك الآن',
                        textColor: AppColors.mainPurpleColor2,
                        textsize: screenWidth(24)),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight(50),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth(2.9)),
                child: InkWell(
                  onTap: () {},
                  child: CustomText(
                      textDecoration: TextDecoration.underline,
                      text: 'المتابعة كزائر',
                      textColor: AppColors.mainTextGreyColor,
                      textsize: screenWidth(24)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
