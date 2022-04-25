import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'app_controller.dart';
import 'Widget/custom_switch.dart';

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
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text('Teste'),
            CustomSwitch(),
            Text('Texto'),
            Container(
              height: 50,
            ),
            Text('Texto'),
            Container(
              height: 50,
            ),
            Text('Texto'),
            Container(
              height: 50,
            ),
            Text('Texto'),
            Container(
              height: 50,
            ),
            Text('Texto'),
            Container(
              height: 50,
            ),
            Text('Texto'),
            Container(
              height: 50,
            ),
            Text('Texto'),
            Container(
              height: 50,
            ),
            Text('Texto'),
            Container(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
