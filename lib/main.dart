import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hns_chat/app/utils/localization/App_locate.dart';
import 'package:hns_chat/app/utils/routes/app_routes.dart';
import 'package:hns_chat/ui/splash_screen/binding/init_binding.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      translations: AppLanguage(),
      locale:const Locale('en','Us'),
      getPages:AppRoutes.pages,
      initialBinding: InitBinding(),
      initialRoute: AppRoutes.profileScreen,
    );
  }
}

