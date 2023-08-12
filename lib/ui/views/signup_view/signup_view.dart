import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impty_project/ui/views/login_view/login_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}
