import 'package:flutter/material.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_images.dart';
import 'package:impty_project/ui/shared/utils.dart';

class SendFeedView extends StatefulWidget {
  const SendFeedView({super.key});

  @override
  State<SendFeedView> createState() => _SendFeedViewState();
}

class _SendFeedViewState extends State<SendFeedView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImages(
          imageName: 'complaint',
          imageSize: screenHeight(8),
        ),
        SizedBox(
          height: screenHeight(120),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: screenHeight(15),
              horizontal: screenWidth(15),
            ),
            hintText: 'ارسل شكوى / اقتراح',
            filled: true,
            fillColor: AppColors.mainSkyColor,
            alignLabelWithHint: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.zero, borderSide: BorderSide.none),
          ),
        ),
        CustomButton(text: 'ارسل'),
      ],
    );
  }
}
