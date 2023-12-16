import 'package:get/get.dart';

class FireStoreEndPoints {
  static const String users = 'users';
}

String? validateWithRegex(
    String? value, String regexPattern, String errorMessage) {
  if (value == null || value.isEmpty) {
    return 'Validation error: Value cannot be empty';
  }

  RegExp regex = RegExp(regexPattern);
  if (!regex.hasMatch(value)) {
    return errorMessage;
  }

  return null;
}

String? validateUsername(String? value) {
  return validateWithRegex(
      value, r'^[a-zA-Z0-9_]+$', 'Invalid username format');
}

String? validateEmail(String? value) {
  return validateWithRegex(
      value,
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
      'Enter a valid email address');
}

String? validatePhoneNumber(String? value) {
  return validateWithRegex(value, r'^\+20[0-9]{9}$',
      'Enter a valid phone number starting with +20 and followed by 9 digits');
}

String? validatePassword(String? value) {
  return validateWithRegex(
      value, r'^(.{6,})$', 'Password must be at least 6 characters');
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