import 'package:get/get.dart';
import 'package:hns_chat/app/utils/routes/app_routes.dart';
import '../../../../data/data_source/remote_data_source/remote_data_source.dart';
import '../../../../data/models/user.dart';

class LogInController extends GetxController{
  final RemoteDataSource dataSource = Get.find<ImplRemoteDataSource>();
  final RxBool loading = false.obs;
  User? user  ;
  String?  password ;
  String?  email ;

  login()async{
    loading.value=true;
    dataSource.login(email!, password!).then((value) {
      user=value;
      print(user?.userName);
      loading.value=false;
      Get.offAndToNamed(AppRoutes.homeScreen,);
    });
  }

  checkLogin(){
    dataSource.checkLogin().then((value){
      if(value){
        Get.offAndToNamed(AppRoutes.homeScreen);
      }
    });
  }


  @override
  void onInit() {
    checkLogin();
    super.onInit();
  }

}