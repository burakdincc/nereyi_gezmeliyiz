import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(UlkeTanitim());
}

class UlkeTanitim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey[100],
          body: LogIn(),
        ),
      ),
    );
  }
}
