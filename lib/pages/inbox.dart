import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Inbox"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
        ],
      ),
    );
  }
}
