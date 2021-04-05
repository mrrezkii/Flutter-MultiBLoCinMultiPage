import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  final Color backgroundColor;
  final Widget body;

  DraftPage({this.body, this.backgroundColor = Colors.pink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo MultiBLoC in Multipage App"),
        backgroundColor: backgroundColor,
      ),
      body: body,
    );
  }
}
