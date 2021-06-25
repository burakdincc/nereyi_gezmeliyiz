import 'package:flutter/material.dart';
import 'package:odev/animation.dart';
import 'sehirler.dart';
import 'myDrawer.dart';

class trSehirler extends StatefulWidget {
  @override
  _trSehirlerState createState() => _trSehirlerState();
}

class _trSehirlerState extends State<trSehirler> {
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 8, bottom: 12, left: 32, right: 16),
              child: Text("GEZİLECEK YERLER",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w700)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 35, right: 35, top: 20, bottom: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20, bottom: 10),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          elevation: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                fit: FlexFit.loose,
                                flex: 1,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      Gecis(widget: Istanbul()),
                                    );
                                  },
                                  child: Image.asset('images/İstanbul.jpg'),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'İSTANBUL',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //İstanbul
                      Container(
                        margin: const EdgeInsets.only(right: 20, bottom: 10),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          elevation: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                fit: FlexFit.loose,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        Gecis(widget: Ankara()),
                                      );
                                    },
                                    child: Image.asset('images/Ankara.jpg')),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'ANKARA',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //Ankara
                      Container(
                        margin: const EdgeInsets.only(right: 20, bottom: 10),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          elevation: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                fit: FlexFit.loose,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        Gecis(widget: Samsun()),
                                      );
                                    },
                                    child: Image.asset('images/Samsun.jpg')),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'SAMSUN',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //Samsun
                      Container(
                        margin: const EdgeInsets.only(right: 20, bottom: 10),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          elevation: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                fit: FlexFit.loose,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        Gecis(widget: Konya()),
                                      );
                                    },
                                    child: Image.asset('images/Konya.jpg')),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'KONYA',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //Konya
                      Container(
                        margin: const EdgeInsets.only(right: 20, bottom: 10),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          elevation: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                fit: FlexFit.loose,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        Gecis(widget: Izmir()),
                                      );
                                    },
                                    child: Image.asset('images/İzmir.jpg')),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'İZMİR',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //İzmir
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
