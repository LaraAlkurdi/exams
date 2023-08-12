import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/shared/colors.dart';

double screenWidth(double percent) {
  return Get.size.width / percent;
}

double screenHeight(double percent) {
  return Get.size.height / percent;
}

void CustomLoader() => BotToast.showCustomLoading(toastBuilder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.transparentColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        width: screenWidth(4),
        height: screenWidth(4),
        child: SpinKitCircle(
          color: AppColors.mainBlueColor,
          size: screenWidth(8),
        ),
      );
    });
