import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hns_chat/app/utils/theme/light_theme.dart';
import 'package:hns_chat/app/widgets/costum_text_form.dart';
import 'package:hns_chat/app/widgets/custom_btn.dart';
import 'package:hns_chat/app/widgets/custom_text_password.dart';
import 'package:hns_chat/ui/auth/register/controller/register_controller.dart';

import '../../../app/utils/constants/constant.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Obx( () {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Register'.tr,
              style: appBarTitleStyle,
            ),
          ),
          body:controller.loading.value? const Center(child: CircularProgressIndicator(),) :
              _scaffoldBody()
        );
      }
    );
  }

  _scaffoldBody()=> Center(
    child: SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*   CustomTextForm(title: 'Name',
               onChanged: (value) {
                controller.user!.userName
               },),*/
            CustomTextForm(
              title: 'User Name',
              labelText:'User Name',
              validator: (value){
                if (value!.isEmpty) {
                  return 'va_empty_userName'.tr;
                }

                // Check if the username contains only letters, numbers, and underscores
                if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
                  return 'va_ms_userName'.tr;
                }

                return null;
              },
              onChanged: (value) {
                controller.user?.userName = value;
              },
            ),
            CustomTextForm(
              title: 'Email',
              labelText:'Email' ,
              keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  emailValidate(value);
                },
              onChanged: (p0) {
                controller.user?.email = p0;
              },
            ),
            CustomTextForm(
                title: 'Phone',
                labelText:'Phone' ,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  String? numericValue = value?.replaceAll(RegExp(r'[^0-9]'), '');
                  if (value!.isEmpty) {
                    return  'va_empty_phone'.tr;
                  }
                  if (numericValue!.length < 11) {
                    return 'va_ms_phone1'.tr;
                  }
                  List<String> allowedPrefixes = ['012', '011', '015', '010'];
                  bool hasAllowedPrefix = allowedPrefixes.any((prefix) => numericValue.startsWith(prefix));

                  if (!hasAllowedPrefix) {
                    return 'va_ms_phone2'.tr;
                  }
                  return null;
                },
                onChanged: (p0) {
                  controller.user?.phone = p0;
                }),
            CustomTextPassword(
                title: 'Password',
                labelText:'Password' ,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
                onChanged: (p0) {
                  controller.password = p0;
                }),
            const SizedBox(
              height: 20.0,
            ),
            CustomBtn(onPressed: () {
              if (_key.currentState!.validate()) {
                controller.register();

              }
            }, title: 'Register')

          ],
        ),
      ),
    ),
  );
}
