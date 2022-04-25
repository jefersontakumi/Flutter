import 'package:flutter/material.dart';
import 'package:startup_namer/my_app/random_words_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Welcome to Flutter',
      home: RandomWordsPage(),
    );
  }
}
