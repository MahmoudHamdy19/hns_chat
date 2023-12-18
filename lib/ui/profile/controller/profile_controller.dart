import 'package:get/get.dart';
import 'package:hns_chat/app/utils/routes/app_routes.dart';
import 'package:image_picker/image_picker.dart';

import '../../../data/data_source/remote_data_source/remote_data_source.dart';
import '../../../data/models/user.dart';

class ProfileController extends GetxController {
  final RemoteDataSource _dataSource = Get.find<ImplRemoteDataSource>();
  Rx<User?> myData = Rx<User?>(null);
  getUserInfo() async {
   _dataSource.getUserInfo().then((value){

     myData.value = value ;
     /*
     if(value==null){
       Get.offAndToNamed(AppRoutes.loginScreen);
     }else{
       myData.value = value ;
     }
     */
   });
  }

  uploadImageToFirebase(PickedFile pickedFile){
    _dataSource.uploadImageToFirebase(PickedFile as PickedFile).then((value) {
      Get.toNamed(AppRoutes.profileScreen);
    });
  }

  @override
  void onReady() {
    getUserInfo();
    super.onReady();
  }
}