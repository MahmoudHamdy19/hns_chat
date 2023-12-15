import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/theme/light_theme.dart';

class CustomTextForm extends StatelessWidget {
  String title;
  TextEditingController? controllerText;
  String? validateMessage;
  TextInputType? keyboardType;
  void Function(String)? onChanged;
  CustomTextForm(
      {required this.title,
      this.controllerText,
      this.onChanged,
      this.keyboardType,
      this.validateMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20.0),
        Text(
          title.tr,
          style: headForFieldStyle,
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextFormField(
          keyboardType: keyboardType,
          onChanged: onChanged,
          textInputAction: TextInputAction.next,
          validator: (value) {
            if (value!.isEmpty) {
              return validateMessage ?? 'va_ms'.tr;
            }
          },
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        )
      ],
    );
  }
}
