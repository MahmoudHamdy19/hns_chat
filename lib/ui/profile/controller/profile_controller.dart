import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../data/data_source/remote_data_source/remote_data_source.dart';
import '../../../data/models/user.dart';

class ProfileController extends GetxController {
  final RemoteDataSource _dataSource = Get.find<ImplRemoteDataSource>();


  getUserInfo() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      return auth.currentUser;
    }
  }


  @override
  void onReady() {
    getUserInfo();
    super.onReady();
  }
}