import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hns_chat/app/utils/theme/light_theme.dart';
import 'package:hns_chat/app/widgets/costum_text_form.dart';
import 'package:hns_chat/app/widgets/custom_text_password.dart';
import 'package:hns_chat/ui/auth/register/controller/register_controller.dart';

import '../../../app/utils/constants/constant.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              'Register'.tr,
              style: appBarTitleStyle,
            ),
          ),
          body: controller.loading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : _scaffoldBody());
    });
  }
  _scaffoldBody() => Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextForm(
                  title: 'User Name',
                  onChanged: (value) {
                    controller.user.userName = value;
                  },
                  validator: (value) {
                    validateUsername(value);
                  },
                ),
                CustomTextForm(
                  title: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (p0) {
                    controller.user.email = p0;
                  },
                  validator: (value) {
                    validateEmail(value);
                  },
                ),
                CustomTextForm(
                  title: 'Phone',
                  keyboardType: TextInputType.phone,
                  onChanged: (p0) {
                    controller.user.phone = p0;
                  },
                  validator: (value) {
                    return validatePhoneNumber(value);
                  },
                ),
                CustomTextPassword(
                  title: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                  onChanged: (p0) {
                    controller.password = p0;
                  },
                  validator: (value) {
                    return validatePassword(value);
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48.0,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    textColor: Colors.white,
                    color: Colors.deepOrange,
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        controller.register();
                      }
                    },
                    child: Text(
                      'Register'.tr,
                      style: butTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

