import 'package:flutter/material.dart';
import 'package:odev/myDrawer.dart';
import 'package:pie_chart/pie_chart.dart';

void main() => runApp(AnimatedChart());

class AnimatedChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  int key = 0;
  Map<String, double> dataMap = {
    '5': 5,
    '10': 3,
    '20': 2,
    '20+': 2,
  };
  Map<String, double> dataMap2 = {
    '5': 2,
    '10': 5,
    '20': 1,
    '20+': 2,
  };

  List<Color> colorList = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
  ];

  Widget PieChartExample() {
    return PieChart(
      dataMap: dataMap,
      initialAngleInDegree: 0,
      animationDuration: Duration(milliseconds: 1000),
      chartType: ChartType.ring,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      ringStrokeWidth: 32,
      colorList: colorList,
      chartLegendSpacing: 32,
      chartValuesOptions: ChartValuesOptions(
        showChartValuesOutside: true,
        showChartValuesInPercentage: true,
        showChartValueBackground: true,
        showChartValues: true,
        chartValueStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      centerText: "Şehir Sayısı",
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        showLegends: true,
        legendShape: BoxShape.rectangle,
        legendPosition: LegendPosition.right,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget PieChartExampleTwo() {
    return PieChart(
      key: ValueKey(key),
      dataMap: dataMap2,
      initialAngleInDegree: 0,
      animationDuration: Duration(milliseconds: 1000),
      chartType: ChartType.ring,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      ringStrokeWidth: 32,
      colorList: colorList,
      chartLegendSpacing: 32,
      chartValuesOptions: ChartValuesOptions(
        showChartValuesOutside: true,
        showChartValuesInPercentage: true,
        showChartValueBackground: true,
        showChartValues: true,
        chartValueStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      centerText: "Şehir Sayısı",
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        showLegends: true,
        legendShape: BoxShape.circle,
        legendPosition: LegendPosition.right,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                key = key + 1;
              });
            },
          )
        ],
        title: Text("İnsanlar Kaç Şehir Gezdi ?"),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Text(
              "20 Yaş Altı",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 30),
            PieChartExample(),
            SizedBox(height: 30),
            Text(
              "20 Yaş Üstü",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 30),
            PieChartExampleTwo(),
          ],
        ),
      ),
    );
  }
}
