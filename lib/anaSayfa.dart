import 'package:flutter/material.dart';
import 'package:odev/dunyaSehirler.dart';
import 'myDrawer.dart';
import 'trSehirler.dart';
import 'package:odev/animation.dart';

class AnaSayfa extends StatefulWidget {
  String isim = "ads";
  AnaSayfa({this.isim});
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.12, 0.4, 0.7, 1.0],
          colors: [
            Colors.white,
            Colors.blueGrey[200],
            Colors.purple[300],
            Colors.deepPurple
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          centerTitle: true,
          title: Text("Nereyi Gezmeliyiz ? "),
        ),
        drawer: MyDrawer(),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 100, bottom: 20, left: 15, right: 15),
                    child: Container(
                      height: 300,
                      width: 450,
                      child: Image.asset("images/Anasayfa.jpg"),
                    ),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                    child: Text("DÜNYA ŞEHİRLERİ"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        Gecis(widget: dunyaSehirler()),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 100, bottom: 20, left: 15, right: 15),
                    child: Container(
                      height: 300,
                      width: 450,
                      child: Image.asset("images/kizkulesi.jpg"),
                    ),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                    child: Text("TÜRKİYE ŞEHİRLERİ"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        Gecis(widget: trSehirler()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
