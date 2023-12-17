import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hns_chat/ui/auth/foreget_password/controler/forget_password_controller.dart';

import '../../../app/utils/constants/constant.dart';
import '../../../app/utils/routes/app_routes.dart';
import '../../../app/utils/theme/light_theme.dart';
import '../../../app/widgets/costum_text_form.dart';
import '../../../app/widgets/custom_btn.dart';

class ForgetPasswordScreen extends GetWidget<ForgetPasswordController> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              'Forget Password',
              style: appBarTitleStyle,
            ),
          ),
          body: controller.loading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : _body());
    });
  }

  _body() {
    return Form(
      key: _key,
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomTextForm(
                title: 'Email',
                labelText: 'Email',
                onChanged: (p0) {
                  controller.email = p0;
                },
                validator: (value) => validateEmail(value),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomBtn(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      controller.forgetPassword();
                    }
                  },
                  title: 'Forget Password'),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
