import 'package:flutter/material.dart';

import 'sehirler.dart';

import 'myDrawer.dart';

class dunyaSehirler extends StatefulWidget {
  @override
  _dunyaSehirlerState createState() => _dunyaSehirlerState();
}

class _dunyaSehirlerState extends State<dunyaSehirler> {
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
                                child: TextButton(
                                  onPressed: () {
                                    print("Merhaba");
                                  },
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Newyork()),
                                        );
                                      },
                                      child: Image.asset('images/Newyork.jpg')),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'NEW YORK',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //New York
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
                                        MaterialPageRoute(
                                            builder: (context) => Paris()),
                                      );
                                    },
                                    child: Image.asset('images/Paris.jpg')),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'PARİS',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //Paris
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
                                        MaterialPageRoute(
                                            builder: (context) => Roma()),
                                      );
                                    },
                                    child: Image.asset('images/Roma.jpg')),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'ROMA',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //Roma
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
                                      MaterialPageRoute(
                                          builder: (context) => Venedik()),
                                    );
                                  },
                                  child: Image.asset('images/Venedik.jpg'),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'VENEDİK',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //Venedik
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
                                        MaterialPageRoute(
                                            builder: (context) => Pekin()),
                                      );
                                    },
                                    child: Image.asset('images/Pekin.jpg')),
                              ),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        'PEKİN  ',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ), //Pekin
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
