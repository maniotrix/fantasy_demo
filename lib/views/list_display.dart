import 'package:fantasy_demo/models.dart';
import 'package:flutter/material.dart';

class ListDisplay extends StatefulWidget {
  const ListDisplay({super.key});

  @override
  State<ListDisplay> createState() => _ListDisplayState();
}

class _ListDisplayState extends State<ListDisplay> {
  List<String> litems = ["One", "Two", "Three"];
  @override
  Widget build(BuildContext ctxt) {
    return Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
                itemCount: litems.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Text(litems[index]);
                }))
      ],
    );
  }
}
