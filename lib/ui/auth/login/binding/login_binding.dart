import 'package:get/get.dart';
import 'package:hns_chat/ui/auth/login/controller/login_controller.dart';

class LogInBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(()=>LogInController(),);
  }

}