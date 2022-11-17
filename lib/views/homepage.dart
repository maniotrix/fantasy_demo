import 'package:fantasy_demo/views/list_display.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "Contests"),
              Tab(text: "My Contests"),
              Tab(text: "My Teams"),
            ],
          ),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("NZ vs IND"),
        ),
        body: const TabBarView(children: [
          ListDisplay(),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ]), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
