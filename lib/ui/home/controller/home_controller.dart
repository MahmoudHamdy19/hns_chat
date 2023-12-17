import 'package:get/get.dart';
import 'package:hns_chat/app/utils/routes/app_routes.dart';
import 'package:hns_chat/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:hns_chat/data/models/user.dart';

class HomeController extends GetxController {
  final RemoteDataSource _dataSource = Get.find<ImplRemoteDataSource>();
  RxList<User> users = RxList<User>([]);

  getUsers() async {
    users.value = (await _dataSource.getUsers())!;
  }

  logout(){
    _dataSource.logout().then((value){
      if(value) {
        Get.offNamedUntil(AppRoutes.loginScreen, (route) => false);
      }
    });
  }

  @override
  void onReady() {
    getUsers();
    super.onReady();
  }

}
