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
    // قم بتعبئة القائمة بالعناصر الوهمية
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
    List<Item> updatedItems = [];

    for (var i = 0; i < items.length; i++) {
      updatedItems.add(
        Item(
          text: items[i].text,
          isSelected: (i == index),
        ),
      );
    }

    items.assignAll(updatedItems);
  }
}
