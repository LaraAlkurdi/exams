import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impty_project/core/services/base_controller.dart';

class EditController extends BaseController {
  RxBool isLoding = false.obs;
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //  void Edit(){
  //         if(formKey.currentState!.validate()) {
  //          runFullLoadingFutuerFunction(
  //           function: UserRepository().login(
  //                         email: emailController.text,
  //                         password: passwordController.text
  //                         ).then((value) {
  //                       value.fold((l) {
  //                         isLoding.value = false;
  //                         CustomToast.showMessage(
  //                             messageType: MessageType.REJECTED,
  //                             message: l, );
  //                       }, (r) {
  //                        storage.setTokenInfo(r);
  //                          Get.off(MainView());
  //                       });
  //                     }));
}
