import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/utils.dart';
import 'package:impty_project/ui/views/signup_view/signup_controller.dart';

class Customradio extends StatefulWidget {
  Customradio({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  State<Customradio> createState() => _CustomradioState();
}

class _CustomradioState extends State<Customradio> {
  SignUpController controller = Get.put(SignUpController());
  RxBool isSelected = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: () {
          if (!isSelected.value) {
            controller.clearSelection();
            isSelected.toggle();
            controller.onChangeSelected(widget.text);
          }
        },
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //  color: isSelected.value ? controller.selectedColor : .unselectedColor,
              ),
            ),
            SizedBox(width: 8),
            CustomText(
              text: widget.text,
              textColor: AppColors.mainTextsColor,
              textsize: screenWidth(25),
            ),
          ],
        ),
      );
    });
  }
}
