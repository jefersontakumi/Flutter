import 'package:flutter/material.dart';
import 'package:startup_namer/sample_app/sample_app_page.dart';

class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sample App',
      home: SampleAppPage(),
    );
  }
}
