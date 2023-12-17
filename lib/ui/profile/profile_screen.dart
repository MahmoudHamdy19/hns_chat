import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hns_chat/app/widgets/user_profile.dart';
import 'package:hns_chat/data/models/user.dart';
import 'package:hns_chat/ui/profile/controller/profile_controller.dart';
import '../../app/utils/theme/light_theme.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Profile',style: appBarTitleStyle),
      ),
      body: UserProfile(),
    );
  }
}
