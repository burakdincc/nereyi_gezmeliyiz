import 'package:flutter/material.dart';

class Istanbul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        centerTitle: true,
        title: Text("Nereyi Gezmeliyiz ? "),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Türkiye Şehirleri"),
              ),
            ),
            ListTile(
              title: Text('Dünya Şehirleri'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
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
              child: SingleChildScrollView(
                child: Row(
                  children: [],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
