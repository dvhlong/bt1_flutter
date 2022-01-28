import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  String greeting = "chao buoi sang";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HOME PAGE", style: TextStyle(color: Colors.white)),
          leading: Icon(
            Icons.home,
            size: 30,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    greeting = "GOOD MORNING";
                  });
                },
                icon: Icon(Icons.alarm, size: 30))
          ],
        ),
        body: Center(
            child:
                Text("${greeting}: ${count}", style: TextStyle(fontSize: 30))),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.blue,
          child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        size: 40,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.alarm,
                        size: 40,
                        color: Colors.white,
                      ))
                ],
              )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
              print(count);
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
