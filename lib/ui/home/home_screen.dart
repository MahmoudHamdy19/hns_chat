import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hns_chat/app/utils/theme/light_theme.dart';
import 'package:hns_chat/app/widgets/user_chat_card.dart';
import 'package:hns_chat/ui/home/controller/home_controller.dart';

class HomeScreen extends GetWidget<HomeController>{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Chats',style: appBarTitleStyle,)),
      body:Obx(
        () {
          return ListView.separated(
            padding: const EdgeInsets.all(20.0),
            itemCount: controller.users.length,
            itemBuilder: (context, index) =>UserChatCard(user:controller.users[index]),
            separatorBuilder: (context, index) => const Divider(height: 30.0),
          );
        }
      ),
    );
  }
}
