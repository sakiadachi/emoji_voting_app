import 'package:emoji_voting_app/common/app_header_bar.dart';
import 'package:flutter/material.dart';

import 'common/emoji_action_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        colorScheme: const ColorScheme.dark(),
        // primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'あぷり'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeaderBar(
        title: 'app',
      ),
      body: SafeArea(
        child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4,
                children: <Widget>[
                  const EmojiActionBtn(
                    color: Colors.pinkAccent,
                    emoji: '🥺',
                  ),
                  const EmojiActionBtn(
                    color: Colors.teal,
                    emoji: '💖',
                  ),
                  EmojiActionBtn(
                    color: Colors.orange.shade500,
                    emoji: '🍙',
                  ),
                  const EmojiActionBtn(
                    color: Colors.deepPurple,
                    emoji: '😷',
                  ),
                  const EmojiActionBtn(
                    color: Colors.lightGreen,
                    emoji: '🍓',
                  ),
                  const EmojiActionBtn(
                    color: Colors.white,
                    emoji: '💄',
                  ),
                  EmojiActionBtn(
                    color: Colors.indigo.shade700,
                    emoji: '😴',
                  ),
                  EmojiActionBtn(
                    color: Colors.pink[100],
                    emoji: '💦',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
