import 'package:flutter/material.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/utils.dart';

import '../../../shared/custom_widgets/custom_images.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: screenHeight(4.6)),
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth(20), vertical: screenWidth(20)),
            child: Column(
              children: [
                CustomImages(
                  imageName: 'rafiki',
                  imageSize: screenHeight(4.5),
                ),
                SizedBox(
                  height: screenHeight(25),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth(3.1)),
                  child: CustomText(
                      // textAlign: TextAlign.center,
                      text: 'الإشعارات',
                      fontWeight: FontWeight.bold,
                      textColor: AppColors.mainTextsColor,
                      textsize: screenWidth(15)),
                ),
                SizedBox(
                  height: screenHeight(30),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth(7.1)),
                  child: CustomText(
                      textAlign: TextAlign.center,
                      text:
                          'ابقى على إطلاع بمواعيد الإمتحان الوطني \nو صدور النتائج,إضافة أسئلة و الكثير\n من الأخبار',
                      textColor: AppColors.mainTextsColor,
                      textsize: screenWidth(30)),
                ),
                SizedBox(
                  height: screenHeight(30),
                ),
                CustomButton(text: 'تفعيل الإشعارات'),
              ],
            )));
  }
}
