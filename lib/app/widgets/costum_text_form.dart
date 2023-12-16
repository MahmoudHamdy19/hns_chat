import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/theme/light_theme.dart';

class CustomTextForm extends StatelessWidget {
  String? Function(String?)? validator;
  String title;
  String? labelText;
  TextEditingController? controllerText;
  String? validateMessage;
  TextInputType? keyboardType;
  void Function(String)? onChanged;
  CustomTextForm(
      {required this.title,
      this.controllerText,
      this.onChanged,
      this.keyboardType,
      this.validateMessage,
      this.validator,
      this.labelText});

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
          validator: validator,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText:labelText?.tr,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        )
      ],
    );
  }
}
