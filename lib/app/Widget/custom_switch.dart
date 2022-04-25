import 'package:flutter/material.dart';
import '../app_controller.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.shared.isDartTheme,
      onChanged: (value) {
        AppController.shared.changeTheme();
      },
    );
  }
}
