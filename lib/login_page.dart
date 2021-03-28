import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_curso_3/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset("assets/images/starbucks-logo.png"),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 20, bottom: 15),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email", border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 20),
                        RaisedButton(
                          color: Colors.cyan,
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed("/home");
                          },
                          child: Text("Entrar"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
