import 'package:flutter/material.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenHeight(20), horizontal: screenWidth(20)),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight(4),
              ),
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
                    Get.to(
                      ProfileView(),
                    );
                  },
                  text: 'حفظ التغييرات'),
              InkWell(
                onTap: () {
                  Get.to(ProfileView());
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth(2.5), vertical: screenHeight(90)),
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
      ),
    );
  }
}
