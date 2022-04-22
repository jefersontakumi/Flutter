import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Titulo')),
      body: Center(
          child: Switch(
        value: AppController.shared.isDartTheme,
        onChanged: (value) {
          setState(() {
            AppController.shared.changeTheme();
          });
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          AppController.shared.changeTheme();
        },
      ),
    );
  }
}
