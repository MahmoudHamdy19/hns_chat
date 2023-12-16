 import 'package:get/get.dart';
import 'package:hns_chat/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:hns_chat/data/models/user.dart';

class RegisterController extends GetxController {
  final RemoteDataSource dataSource = Get.find<ImplRemoteDataSource>();
  final RxBool loading = false.obs;
  User user  = User(userName: null, email: null, phone: null, blockersID: null, followingID: null, followersID: null, createTime: null, updateTime: null, lastSeen: null);
  String?  password ;
  register(){
    loading.value = true ;
    dataSource.register(user, password!).then((value){
      loading.value = false ;
    });
  }
}

/*
*         task
*         email , password , number validate
*         M@$#123
*         full login
*
*
* */