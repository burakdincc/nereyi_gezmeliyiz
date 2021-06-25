import 'package:flutter/material.dart';
import 'package:odev/myDrawer.dart';

void main() => runApp(GDTest());

class GDTest extends StatefulWidget {
  @override
  _GDTestState createState() => _GDTestState();
}

int sayac = 0;

class _GDTestState extends State<GDTest> {
  List<String> yanitlar = [
    "Hiç Tıklanmadı",
    "Bir kere tıklandı",
    "İki kere tıklandı",
    "Üç kere tıklandı",
    "Dört kere tıklandı",
    "Beş kere tıklandı",
    "Altı kere tıklandı",
    "Yedi kere tıklandı",
    "Sekiz kere tıklandı",
    "Dokuz kere tıklandı",
    "On kere tıklandı",
    "Onbir kere tıklandı",
    "Oniki kere tıklandı",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          title: Text("Gesture Detector Test"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onLongPress: () {
                  setState(() {
                    sayac = sayac + 1;
                    print(sayac);
                  });
                },
                child: Flexible(
                  flex: 1,
                  child: Container(
                    width: 200,
                    height: 60,
                    color: Colors.pink,
                    child: Center(child: Text("Uzun bas")),
                  ),
                ),
              ),
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    sayac = sayac + 1;
                    print(sayac);
                  });
                },
                child: Flexible(
                  flex: 1,
                  child: Container(
                    width: 200,
                    height: 60,
                    color: Colors.orange,
                    child: Center(child: Text("İki kere bas")),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    sayac = sayac + 1;
                    print(sayac);
                  });
                },
                child: Flexible(
                  flex: 1,
                  child: Container(
                    width: 200,
                    height: 60,
                    color: Colors.yellow,
                    child: Center(child: Text("Bir kere bas")),
                  ),
                ),
              ),
              GestureDetector(
                onLongPressUp: () {
                  setState(() {
                    sayac = sayac + 1;
                    print(sayac);
                  });
                },
                child: Flexible(
                  flex: 1,
                  child: Container(
                    width: 200,
                    height: 60,
                    color: Colors.blue,
                    child: Center(child: Text("Uzun basmayı bırakınca")),
                  ),
                ),
              ),
              GestureDetector(
                onTapCancel: () {
                  setState(() {
                    sayac = sayac + 1;
                    print(sayac);
                  });
                },
                child: Flexible(
                  flex: 1,
                  child: Container(
                    width: 200,
                    height: 60,
                    color: Colors.black54,
                    child: Center(child: Text("Basmaktan vazgeç")),
                  ),
                ),
              ),
              Text(yanitlar[sayac]),
            ],
          ),
        ),
      ),
    );
  }
}
