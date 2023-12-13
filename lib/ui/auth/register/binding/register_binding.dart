import 'package:get/get.dart';
import 'package:hns_chat/ui/auth/register/controller/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => RegisterController(),);
  }
}