import 'package:flutter/material.dart';
import 'package:startup_namer/app/home_page.dart';
import 'package:startup_namer/app/login_page.dart';
import 'app_controller.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.shared,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: AppController.shared.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
