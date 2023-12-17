import 'package:get/get.dart';

import '../controler/forget_password_controller.dart';

class ForgetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      ForgetPasswordController(),
    );
  }
}
