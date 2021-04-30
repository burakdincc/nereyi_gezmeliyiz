import 'package:flutter/material.dart';
import 'anaSayfa.dart';
import 'user.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController inputController = new TextEditingController();
  String isim = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
        child: Container(
          padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                  controller: inputController,
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.purple,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          BorderSide(color: Colors.pinkAccent[100], width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.purple, width: 2.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(200, 0, 127, 0.2))),
                    child: Text("Giriş"),
                    onPressed: () {
                      User.kullaniciAdi = inputController.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnaSayfa(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
