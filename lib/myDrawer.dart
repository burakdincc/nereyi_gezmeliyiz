import 'package:flutter/material.dart';
import 'package:odev/animatedChart.dart';
import 'package:odev/dunyaSehirler.dart';
import 'package:odev/gestureDetectorTest.dart';
import 'shadowText.dart';
import 'hakkında.dart';
import 'anaSayfa.dart';
import 'trSehirler.dart';
import 'user.dart';
import 'ornekApiCekme.dart';
import 'gestureDetectorTest.dart';

class MyDrawer extends StatefulWidget {
  String isim = "";
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.05, 0.2, 0.5, 1.0],
                colors: [
                  Colors.grey[400],
                  Colors.grey[600],
                  Colors.grey[800],
                  Colors.black
                ],
              ),
            ),
            accountName: Center(
              child: ShadowText(
                User.kullaniciAdi,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnaSayfa()),
              );
            },
            title: Text("Ana Sayfa"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => trSehirler()),
              );
            },
            title: Text("Türkiye Şehirleri"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => dunyaSehirler()),
              );
            },
            title: Text('Dünya Şehirleri'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimatedChart()),
              );
            },
            title: Text("Kaç Şehir Gezdin"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Hakkinda()),
              );
            },
            title: Text("Hakkında"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Gelistiriciler()),
              );
            },
            title: Text("Geliştiriciler"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GDTest()),
              );
            },
            title: Text("Gesture Detector Test"),
          ),
        ],
      ),
    );
  }
}
