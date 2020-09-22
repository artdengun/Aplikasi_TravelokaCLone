import 'package:flutter/material.dart';
import 'package:traveloka_clone/pages/awal.dart';
import 'package:traveloka_clone/pages/inbox.dart';
import 'package:traveloka_clone/pages/pesanan.dart';
import 'package:traveloka_clone/pages/profile.dart';
import 'package:traveloka_clone/pages/simpan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Traveloka'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ini untuk layout fungsi di menu
  int _selectedIndex = 0;
  final _layoutPage = [Awal(), Simpan(), Pesanan(), Inbox(), Profile()];

  // ketika di press di akan ake mana

  void _onKetikaDiPencet(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Awal')),
          BottomNavigationBarItem(
              icon: Icon(Icons.save), title: Text('Simpan')),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_agenda), title: Text('Pesanan')),
          BottomNavigationBarItem(
              icon: Icon(Icons.inbox), title: Text('Inbox')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Akun Saya'))
        ],
        type: BottomNavigationBarType.fixed, // Ketika kita aktifin yang lain, dia fix
        currentIndex: _selectedIndex, // liat data dari index
        onTap: _onKetikaDiPencet, // mengeluarkan notif ketika di pencet
      ),
    );
  }
}
