import 'package:flutter/material.dart';
import 'package:youtube_curso_3/app_controller.dart';
import 'package:youtube_curso_3/home_page.dart';

import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   // Container(
    //   //   child: Center(
    //   //     child: Image.asset("assets/images/pessoa_feliz.jpeg"),
    //   //   ),
    //   // );
    //   child: Center(
    //     child: Text(
    //       title,
    //       textDirection: TextDirection.ltr,
    //       style: TextStyle(color: Colors.white, fontSize: 50.0),
    //     ),
    //   ),
    // );
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: "/",
          routes: {
            "/": (context) => LoginPage(),
            "/home": (context) => HomePage(),
          },
        );
      },
    );
  }
}
