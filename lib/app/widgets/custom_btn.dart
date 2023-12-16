import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/theme/light_theme.dart';

class CustomBtn extends StatelessWidget {
  void Function()? onPressed;
  String title ;

   CustomBtn({super.key,required this.onPressed,required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.0,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)),
        textColor: Colors.white,
        color: Colors.deepOrange,
        onPressed: onPressed,
        child: Text(
          title.tr,
          style: butTextStyle,
        ),
      ),
    );
  }
}
