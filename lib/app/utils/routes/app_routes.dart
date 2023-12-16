import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hns_chat/ui/auth/login/binding/login_binding.dart';
import 'package:hns_chat/ui/auth/login/login_screen.dart';
import 'package:hns_chat/ui/auth/register/binding/register_binding.dart';
import 'package:hns_chat/ui/auth/register/regiser_screen.dart';

class AppRoutes {

  static String initRoute = '/' ;
  static String registerScreen = '/register' ;
  static String loginScreen = '/login' ;
  static List<GetPage> pages = [
    GetPage(name: registerScreen,
        bindings: [
          RegisterBinding(),
        ],
        page: () => RegisterScreen(),),
    GetPage(name: loginScreen,
      bindings: [
        LogInBinding(),
      ],
      page: () => LoginScreen(),)

  ];


}