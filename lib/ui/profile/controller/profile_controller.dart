import 'package:get/get.dart';
import 'package:hns_chat/app/utils/routes/app_routes.dart';

import '../../../data/data_source/remote_data_source/remote_data_source.dart';
import '../../../data/models/user.dart';

class ProfileController extends GetxController {
  final RemoteDataSource _dataSource = Get.find<ImplRemoteDataSource>();
  Rx<User?> myData = Rx<User?>(null);
  getUserInfo() async {
   _dataSource.getUserInfo().then((value){
     if(value==null){
       Get.offAndToNamed(AppRoutes.loginScreen);
     }else{
       myData.value = value ;
     }
   });
  }

  @override
  void onReady() {
    getUserInfo();
    super.onReady();
  }
}