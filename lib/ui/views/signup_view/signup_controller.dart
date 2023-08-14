import 'package:get/get.dart';
import 'package:impty_project/core/services/base_controller.dart';

class Item {
  final String text;
  final RxBool isSelected;

  Item({required this.text, required bool isSelected})
      : isSelected = isSelected.obs;
}

class SignUpController extends BaseController {
  final items = <Item>[].obs;

  @override
  void onInit() {
    super.onInit();
    items.assignAll([
      Item(text: 'نص 1', isSelected: false),
      Item(text: 'نص 2', isSelected: false),
      Item(text: 'نص 3', isSelected: false),
      Item(text: 'نص 1', isSelected: false),
      Item(text: 'نص 2', isSelected: false),
      Item(text: 'نص 3', isSelected: false),
    ]);
  }

  void selectItem(int index) {
    for (var i = 0; i < items.length; i++) {
      items[i].isSelected.value = (i == index);
    }
  }
}
