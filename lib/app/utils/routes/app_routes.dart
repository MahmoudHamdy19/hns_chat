import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hns_chat/ui/auth/foreget_password/binding/forget_password_binding.dart';
import 'package:hns_chat/ui/auth/foreget_password/forget_password.dart';
import 'package:hns_chat/ui/auth/login/binding/login_binding.dart';
import 'package:hns_chat/ui/auth/login/login_screen.dart';
import 'package:hns_chat/ui/auth/register/binding/register_binding.dart';
import 'package:hns_chat/ui/auth/register/regiser_screen.dart';
import 'package:hns_chat/ui/home/binding/home_binding.dart';
import 'package:hns_chat/ui/home/home_screen.dart';
import 'package:hns_chat/ui/profile/binding/profile_binding.dart';
import 'package:hns_chat/ui/profile/profile_screen.dart';


class AppRoutes {

  static String initRoute = '/' ;
  static String registerScreen = '/register' ;
  static String loginScreen = '/login' ;
  static String homeScreen = '/home' ;
  static String profileScreen = '/profile' ;
  static String forgetPasswordScreen = '/forgetPassword' ;
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
      page: () => LoginScreen(),),
    GetPage(name: forgetPasswordScreen,
      bindings: [
        ForgetPasswordBinding(),
      ],
      page: () => ForgetPasswordScreen(),),
    GetPage(name: homeScreen,
      bindings: [
        HomeBinding(),
      ],
      page: () => const HomeScreen(),),
    GetPage(name: profileScreen,
      bindings: [
        ProfileBinding(),
      ],
      page: () => const ProfileScreen(),),

  ];


}