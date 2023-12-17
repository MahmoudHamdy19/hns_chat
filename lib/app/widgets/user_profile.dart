import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hns_chat/ui/profile/controller/profile_controller.dart';
import '../utils/theme/light_theme.dart';
class UserProfile extends GetWidget<ProfileController>{
   UserProfile({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  Card(
        margin: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/profile-shot-aristocratic-girl-blouse-with-frill-lady-with-flowers-her-hair-posing-proudly-against-blue-wall_197531-14304.jpg?w=360&t=st=1702768960~exp=1702769560~hmac=3547cddeb1422e7ca87778f41fa14fa592cb66b81de826aa5c9163f88dd3090a'),
              ),
              const SizedBox(height: 30.0,),
              Row(
                children: [
                  Text('Name :',style:  headChatTextStyle,),
                  Text(controller.myData.value!.userName.toString()??'')
                ],
              ),
              const SizedBox(height: 20.0,),
              Row(
                children: [
                  Text('Email :',style:  headChatTextStyle,),
                  Text(controller.myData.value!.email.toString()??'')
                ],
              ),
              const SizedBox(height: 20.0,),
              Row(
                children: [
                  Text('Phone Number :',style:  headChatTextStyle,),
                  Text(controller.myData.value!.phone.toString()??'')
                ],
              ),
              const SizedBox(height: 20.0,),
              Card(
                color: Colors.deepOrange,
                child: DefaultTextStyle(
                  style: const TextStyle(color: Colors.white,fontSize: 14.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              const Text('Followers :   '),
                              Text(controller.myData.value!.followersID!.length.toString()),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              const Text('Following :   ',),
                              Text(controller.myData.value!.followingID!.length.toString()),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              const Text('Blockers :   '),
                              Text(controller.myData.value!.blockersID!.length.toString()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
