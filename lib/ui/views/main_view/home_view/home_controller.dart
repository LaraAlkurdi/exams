import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:impty_project/core/services/base_controller.dart';

class HomeController extends BaseController {
  final images = [
    'assets/images/Login.svg',
    'assets/images/Login.svg',
    'assets/images/Login.svg',
  ];
  RxInt currentIndex = 0.obs;
  void onPageChanged(int index) {
    currentIndex.value = index;
    update();
  }
}
