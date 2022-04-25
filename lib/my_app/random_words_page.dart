import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWordsPage extends StatefulWidget {
  const RandomWordsPage({Key? key}) : super(key: key);

  @override
  State<RandomWordsPage> createState() => _RandomWordsPageState();
}

class _RandomWordsPageState extends State<RandomWordsPage> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Startup Name Generator"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();

          if (i >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          return ListTile(
            title: Text(
              _suggestions[i].asCamelCase,
              style: _biggerFont,
            ),
          );
        },
      ),
    );
  }
}
