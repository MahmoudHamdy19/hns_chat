import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:hns_chat/data/models/user.dart';

import '../utils/theme/light_theme.dart';

class UserProfile extends StatelessWidget {
   UserProfile({super.key,required this.user});
   User user   ;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/profile-shot-aristocratic-girl-blouse-with-frill-lady-with-flowers-her-hair-posing-proudly-against-blue-wall_197531-14304.jpg?w=360&t=st=1702768960~exp=1702769560~hmac=3547cddeb1422e7ca87778f41fa14fa592cb66b81de826aa5c9163f88dd3090a'),
          ),
          const SizedBox(height: 30.0,),
          Row(
            children: [
              Text('Name :',style:  headChatTextStyle,),
              Text(user.toString()??'')
            ],
          ),
          const SizedBox(height: 20.0,),
          Row(
            children: [
              Text('Email :',style:  headChatTextStyle,),
              Text(user.email.toString()??'')
            ],
          ),
          const SizedBox(height: 20.0,),
          Row(
            children: [
              Text('Phone Number :',style:  headChatTextStyle,),
              Text(user.phone.toString()??'')
            ],
          )
        ],
      ),
    );
  }
}
