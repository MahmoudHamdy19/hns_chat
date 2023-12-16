import 'package:get/get.dart';
import '../../../../data/data_source/remote_data_source/remote_data_source.dart';
import '../../../../data/models/user.dart';

class LogInController extends GetxController{
  final RemoteDataSource dataSource = Get.find<ImplRemoteDataSource>();
  final RxBool loading = false.obs;
  User? user  ;
  String?  password ;
  String?  email ;
  login(){
    loading.value=true;
    dataSource.login(email!, password!).then((value) {
      user=value;
      loading.value=false;
    });



  }
}