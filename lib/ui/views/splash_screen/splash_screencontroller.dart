import 'package:get/get.dart';
import 'package:impty_project/ui/views/login_view/login_view.dart';
import 'package:impty_project/ui/views/main_view/main_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      // if (storage.getFirstLunch()  )
      Get.off(LoginView());

      // else {
      //  Get.off(storage.isLoggedIn? MainView():LandingView());
      // }
      // storage.setFirstLunch(false);
    });
    super.onInit();
  }
}
