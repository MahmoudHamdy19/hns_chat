import 'package:get/get.dart';
import 'package:hns_chat/app/utils/localization/ar_aa.dart';
import 'package:hns_chat/app/utils/localization/en_us.dart';

class AppLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>{
    'en_US':en_usMap,
    'ar_AA':ar_aaMap
  };
}