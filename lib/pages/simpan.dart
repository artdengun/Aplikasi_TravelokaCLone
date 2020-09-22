import 'package:flutter/material.dart';

class Simpan extends StatefulWidget {
  @override
  _SimpanState createState() => _SimpanState();
}

class _SimpanState extends State<Simpan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Simpan"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {}),
        ],
      ),
    );
  }
}
