import 'package:emoji_voting_app/common/app_header_bar.dart';
import 'package:flutter/material.dart';

import 'common/emoji_action_btn.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Voting App',
      theme: ThemeData(
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
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Red',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Blue',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.info_outline),
        label: 'Yellow',
      )
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
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
      drawer: const Drawer(child: Center(child: Text("Drawer"))),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
