import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:impty_project/core/enums/message_type.dart';
import 'package:impty_project/core/enums/operation_type.dart';
import 'package:impty_project/core/enums/request_status.dart';
import 'package:impty_project/core/services/base_controller.dart';

class HomeController extends BaseController {
  List<String> categoriesList =
      <String>['الكل', 'الكليات الهندسية', 'الكليات الطبية'].obs;
  RxInt selectedCategory = 0.obs;
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

  bool get isCategoryLoading =>
      requestStatus == RequestStatus.LOADING.obs &&
      operationType == OperationType.CATEGORY;

  void getCategory() {
    // runFutuerFunction(
    // type: OperationType.CATEGORY,
    // function: CategoryRepository().getAll().then(
    //   (value) {
    //     value.fold((l) {
    //       CustomToast.showMessage(
    //           message: l, messageType: MessageType.REJECTED);
    //     }, (r) {
    //       categoriesList.addAll(["All", ...r]);
    //     });
    //   },
    // ));
  }

  void selectCategory(int index) {
    selectedCategory.value = index;
    String category = categoriesList[index];
  }
}
