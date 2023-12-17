import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hns_chat/app/utils/routes/app_routes.dart';
import 'package:hns_chat/app/utils/theme/light_theme.dart';
import 'package:hns_chat/app/widgets/user_chat_card.dart';
import 'package:hns_chat/ui/home/controller/home_controller.dart';

class HomeScreen extends GetWidget<HomeController>{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:   Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Image.network(
                'https://img.freepik.com/free-photo/profile-shot-aristocratic-girl-blouse-with-frill-lady-with-flowers-her-hair-posing-proudly-against-blue-wall_197531-14304.jpg?w=360&t=st=1702768960~exp=1702769560~hmac=3547cddeb1422e7ca87778f41fa14fa592cb66b81de826aa5c9163f88dd3090a',width: double.infinity,fit: BoxFit.cover,)),
              ListTile(leading: const Icon(Icons.person),title: const Text('Pofile'),trailing: const Icon(Icons.arrow_forward_ios),onTap: () {
              Get.toNamed(AppRoutes.profileScreen);
            },),
              ListTile(
                leading: const Icon(Icons.logout),title: const Text('Logout'),trailing: const Icon(Icons.arrow_forward_ios),onTap: () {
                  controller.logout();
            },),
          ],
        ),
      ),
      appBar: AppBar(
          title:Text('Chats',style: appBarTitleStyle,),
      ),
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
