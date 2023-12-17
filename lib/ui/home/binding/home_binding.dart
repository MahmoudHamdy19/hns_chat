import 'package:get/get.dart';
import 'package:hns_chat/ui/home/controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}