import 'package:flutter/material.dart';
import 'package:startup_namer/sample_app/sample_app_page.dart';

class SampleApp extends StatelessWidget {
  final String title;

  // This widget is the root of your application.
  const SampleApp({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: const SampleAppPage(),
    );
  }
}
