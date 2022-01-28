import 'package:flutter/material.dart';
import 'package:hello_flutter/view/my_app2.dart';
import 'package:hello_flutter/view/my_app4.dart';
import 'package:hello_flutter/view/new/new_screen.dart';
import 'package:hello_flutter/view/profile.dart';
import 'package:hello_flutter/view/profile/profile_screen.dart';
import 'package:hello_flutter/view/profile/profile_viewmodel.dart';
import 'package:hello_flutter/view/profile/test.dart';
import 'package:hello_flutter/view/signup.dart';
import 'package:provider/provider.dart';
import 'view/listview_basic.dart';
import 'view/login.dart';

void main() {
  runApp(
    NewScreen(),
  );
}

class Profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp() : super();

  Widget createColum(String text, IconData icon, Color color) {
    double size = 25;
    return Column(
      children: [
        Icon(icon, textDirection: TextDirection.ltr),
        Text(
          text,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: color, fontSize: size),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue),
      padding: EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(38)),
                  color: Colors.amber,
                ),
                padding: EdgeInsets.all(15),
                width: 3000,
                height: 200,
                child: Text(
                  "Hello World",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                  textDirection: TextDirection.ltr,
                )),
            Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  createColum("Call", Icons.call, Colors.red),
                  createColum("Routes", Icons.place, Colors.cyan),
                  createColum("Share", Icons.share, Colors.orange),
                  createColum("Clock", Icons.access_alarms, Colors.green)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
