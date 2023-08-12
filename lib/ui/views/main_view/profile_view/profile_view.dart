import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_icon.dart';

import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/login_view/login_view.dart';
import 'package:impty_project/ui/views/main_view/about_as_view/about_as_view.dart';
import 'package:impty_project/ui/views/main_view/edit_profile/edit_profile.dart';
import 'package:impty_project/ui/views/main_view/send_feed_view/send_feed_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({
    super.key,
  });

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool isEditProfile = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: screenHeight(6)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth(20), vertical: screenHeight(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: screenWidth(1),
                height: screenHeight(5.5),
                decoration: BoxDecoration(
                  border: Border.all(
                      width: screenWidth(150), color: AppColors.mainBlueColor),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person_sharp,
                  color: AppColors.mainBlueColor,
                  size: screenHeight(8),
                ),
                // CustomImages(
                //   imageName: 'ic_user',
                //   imageSize: screenWidth(4.7),
                //   imageColor: AppColors.mainBlueColor,
                // ),
              ),
            ),
            SizedBox(
              height: screenHeight(90),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth(3.3)),
              child: CustomText(
                textAlign: TextAlign.center,
                text: 'اسم المستخدم',
                textColor: AppColors.mainTextsColor,
                textsize: screenWidth(22),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: screenHeight(20),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isEditProfile = true;
                });
                Get.to(EditProfileView());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      container: Container(
                        color: AppColors.mainPurpleColor,
                        width: screenWidth(200),
                        height: screenHeight(30),
                      ),
                      text: 'المعلومات الشخصية',
                      textColor: AppColors.mainPurpleColor,
                      textsize: screenWidth(20)),
                  CustomIcon(
                      imageName: 'ic_edit',
                      colorIcon: AppColors.mainPurpleColor),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(40),
            ),
            InkWell(
              onTap: () {
                Get.defaultDialog(
                  title: '',
                  content: SendFeedView(),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      container: Container(
                        color: AppColors.mainBlueColor,
                        width: screenWidth(200),
                        height: screenHeight(30),
                      ),
                      text: 'ارسال شكاوي',
                      textColor: AppColors.mainBlueColor,
                      textsize: screenWidth(20)),
                  CustomIcon(
                    imageName: 'ic_send',
                    colorIcon: AppColors.mainBlueColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(40),
            ),
            InkWell(
              onTap: () {
                Get.to(AboutAsView());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      container: Container(
                        color: AppColors.mainTextsColor,
                        width: screenWidth(200),
                        height: screenHeight(30),
                      ),
                      text: 'عن التطبيق',
                      textColor: AppColors.mainTextsColor,
                      textsize: screenWidth(20)),
                  CustomIcon(
                    imageName: 'ic_info',
                    colorIcon: AppColors.mainTextsColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(15),
            ),
            CustomButton(
                onPressed: () {
                  Get.off(LoginView());
                },
                text: 'تسجيل الخروج'),
          ],
        ),
      ),
    );
  }
}
