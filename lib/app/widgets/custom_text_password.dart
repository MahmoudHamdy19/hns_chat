import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hns_chat/ui/auth/register/controller/register_controller.dart';

import '../utils/theme/light_theme.dart';

class CustomTextPassword extends StatelessWidget{
  String title;
  TextEditingController? controllerText;
  String? validateMessage;
  TextInputType? keyboardType ;
  RxBool showPassword = true.obs  ;
  void Function(String)? onChanged;
  bool isPassword;
  String? Function(String?)? validator; // Updated to accept a validation function

  CustomTextPassword({super.key, required this.title,
    this.controllerText,
    this.onChanged,
    this.keyboardType,
    this.isPassword = false,
    this.validateMessage,
    this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height:20.0),
        Text(
          title.tr,
          style: headForFieldStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Obx(() {
          return TextFormField(
            keyboardType:keyboardType,
            onChanged: onChanged,
            textInputAction: TextInputAction.next,
           validator: validator,
            obscureText: isPassword &&showPassword.value,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                suffixIcon:showPassword.value?
                IconButton(onPressed: (){
                  showPassword.value = false;
                }, icon: Icon(Icons.remove_red_eye)): IconButton(onPressed: (){
                  showPassword.value = true;
                }, icon: Icon(Icons.panorama_fish_eye))

            ),
          );
        }
        )
      ],
    );
  }
}
