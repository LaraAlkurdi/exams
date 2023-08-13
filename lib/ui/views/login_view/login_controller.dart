import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impty_project/core/Data/repositories/user_repository.dart';
import 'package:impty_project/core/enums/message_type.dart';
import 'package:impty_project/core/services/base_controller.dart';
import 'package:impty_project/core/utils/general_util.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_toast.dart';
import 'package:impty_project/ui/views/main_view/main_view.dart';

class LoginController extends BaseController {
  RxBool isLoding = false.obs;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void Login() {
    if (formKey.currentState!.validate()) {
      runFullLoadingFutuerFunction(
          function: UserRepository()
              .login(
                  email: userNameController.text,
                  password: passwordController.text)
              .then((value) {
        value.fold((l) {
          isLoding.value = false;
          CustomToast.showMessage(
            messageType: MessageType.REJECTED,
            message: l,
          );
        }, (r) {
          storage.setTokenInfo(r);
          Get.off(MainView());
        });
      }));
    }
  }
}
