import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewBasic(),
    );
  }
}

class ListViewBasic extends StatefulWidget {
  const ListViewBasic({Key? key}) : super(key: key);

  @override
  _ListViewBasicState createState() => _ListViewBasicState();
}

class _ListViewBasicState extends State<ListViewBasic> {
  var data = generateWordPairs().take(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view basic - Lecture 3"),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                var wordPair = data.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(fontSize: 30),
                          )),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.room)),
                        ],
                      ),
                      title: Text(
                        wordPair.asPascalCase,
                        style: TextStyle(color: Colors.blue, fontSize: 30),
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
