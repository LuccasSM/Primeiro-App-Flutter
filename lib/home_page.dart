import 'package:flutter/material.dart';
import 'package:youtube_curso_3/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                  child: Image.asset("assets/images/foto-drawer.jpeg")),
              accountName: Text("User X"),
              accountEmail: Text("x.....@email.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              subtitle: Text("Entrar da Tela"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/home");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              subtitle: Text("Sair da Tela"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Nossa Home Page!",
          style: TextStyle(color: Colors.white, backgroundColor: Colors.blue),
        ),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador: $counter"),
            Container(
              height: 70,
            ),
            CustomSwitch(),
            Container(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipOval(
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.red,
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  color: Colors.green,
                ),
                ClipOval(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  width: 130,
                  height: 130,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
