import 'package:get/get.dart';

import '../../../../app/utils/routes/app_routes.dart';
import '../../../../data/data_source/remote_data_source/remote_data_source.dart';

class ForgetPasswordController extends GetxController {
  final RemoteDataSource dataSource = Get.find<ImplRemoteDataSource>();
  final RxBool loading = false.obs;
  String? email;

  forgetPassword() async {
    loading.value = true;
    dataSource.forgetPassword(email!).then((value) {
      loading.value = false;
      Get.offAndToNamed(
        AppRoutes.loginScreen,
      );
    });
  }
}
