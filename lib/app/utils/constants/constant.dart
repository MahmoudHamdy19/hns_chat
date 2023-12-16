import 'package:get/get.dart';

class FireStoreEndPoints {
  static const String users = 'users';
}

emailValidate(value){

  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  if (value!.isEmpty) {
    return  'va_empty_email'.tr;
  }
  if (!emailRegex.hasMatch(value)) {
    return 'va_ms_email'.tr;
  }
  return null;
}