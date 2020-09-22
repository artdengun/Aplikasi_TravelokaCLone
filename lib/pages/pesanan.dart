import 'package:flutter/material.dart';

class Pesanan extends StatefulWidget {
  @override
  _PesananState createState() => _PesananState();
}

class _PesananState extends State<Pesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pesanan"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
        ],
      ),
    );
  }
}
