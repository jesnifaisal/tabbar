import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: tabbar(),
    debugShowCheckedModeBanner: false,
  ));
}

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TAB BAR"),
            backgroundColor: Colors.green[900],
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.chat_bubble), text: "Chat"),
                Tab(
                  icon: Icon(Icons.radio),
                  text: "Music",
                ),
                Tab(
                  icon: Icon(Icons.umbrella),
                  text: "Rain",
                )
              ],
            ),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text("Chats"),
            ),
            Center(
              child: Text("Musics"),
            ),
            Center(
              child: Text("Rains"),
            )
          ]),
        ));
  }
}
