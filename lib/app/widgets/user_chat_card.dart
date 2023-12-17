import 'package:flutter/material.dart';
import 'package:hns_chat/app/utils/theme/light_theme.dart';

import '../../data/models/user.dart';

class UserChatCard extends StatelessWidget {
    UserChatCard({super.key,required this.user});
    User user ;
  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        const CircleAvatar(
          radius: 40.0,
          backgroundImage: NetworkImage('https://img.freepik.com/free-photo/profile-shot-aristocratic-girl-blouse-with-frill-lady-with-flowers-her-hair-posing-proudly-against-blue-wall_197531-14304.jpg?w=360&t=st=1702768960~exp=1702769560~hmac=3547cddeb1422e7ca87778f41fa14fa592cb66b81de826aa5c9163f88dd3090a'),
        ),
        const SizedBox(width: 10.0,) ,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.userName.toString(),style: headChatTextStyle,),
              Row(
                children: [
                  Expanded(child: Text('Hallo!',overflow: TextOverflow.ellipsis,style: subheadChatTextStyle,)),
                  Expanded(child: Text('1/1/2023 8:00 PM',style: subheadDateChatTextStyle)),
                ],
              )
            ],
          ),
        )
      ],
    ) ;
  }
}
/*
*
* const ListTile(

      title:
      subtitle:
      trailing:
      leading:
    )
*
* */