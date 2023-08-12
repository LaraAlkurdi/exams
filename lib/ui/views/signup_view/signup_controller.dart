import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impty_project/core/services/base_controller.dart';
import 'package:impty_project/ui/shared/colors.dart';

class SignUpController extends BaseController {
  RxString selectedValue = ''.obs;
// أعلى الكلاس
  Rx<Color> selectedColor = AppColors.mainBlueColor.obs;
  Rx<Color> unselectedColor = AppColors.mainWhiteColor.obs;
  void onChangeSelected(String value) {
    selectedValue = value.obs;
    update();
  }

  void clearSelection() {
    selectedValue = ''.obs;
    update();
  }
}
