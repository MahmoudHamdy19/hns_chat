import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/theme/light_theme.dart';

class CustomTextForm extends StatelessWidget {
  String title;
  TextEditingController? controllerText;
  String? validateMessage;
  TextInputType? keyboardType;
  void Function(String)? onChanged;
  String? Function(String?)? validator; // Updated to accept a validation function
  CustomTextForm(
      {required this.title,
      this.controllerText,
      this.onChanged,
      this.keyboardType,
      this.validator});

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
          validator:validator,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        )
      ],
    );
  }
}
