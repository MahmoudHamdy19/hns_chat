import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hns_chat/ui/auth/register/binding/register_binding.dart';
import 'package:hns_chat/ui/auth/register/regiser_screen.dart';

class AppRoutes {

  static String initRoute = '/' ;
  static String registerScreen = '/register' ;
  static List<GetPage> pages = [
    GetPage(name: registerScreen,
        bindings: [
          RegisterBinding(),
        ],
        page: () => RegisterScreen(),)
  ];


}