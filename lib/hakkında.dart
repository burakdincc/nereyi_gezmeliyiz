import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'myDrawer.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          color: Colors.grey[500],
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[800],
            centerTitle: true,
            title: Text("Nereyi Gezmeliyiz ? "),
          ),
          drawer: MyDrawer(),
          body: Container(
            alignment: AlignmentDirectional.center,
            child: Text(
              "   Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu Mobil Programlama dersi kapsamında 193301016 numaralı Burak Dinç tarafından 30 Nisan 2021 günü yapılmıştır.",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
