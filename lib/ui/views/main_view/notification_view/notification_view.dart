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
    return Column(
      children: [
        CustomImages(
          imageName: 'rafiki',
          imageSize: screenHeight(4.5),
        ),
        CustomText(
            text: 'الإشعارات',
            textColor: AppColors.mainTextsColor,
            textsize: screenWidth(20)),
        CustomText(
            text:
                'ابقى على إطلاع بمواعيد الإمتحان الوطني \nو صدور النتائج,إضافة أسئلة و الكثير من الأخبار',
            textColor: AppColors.mainTextsColor,
            textsize: screenWidth(40)),
        CustomButton(text: 'تفعيل الإشعارات'),
      ],
    );
  }
}
