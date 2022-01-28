import 'package:flutter/material.dart';
import 'package:hello_flutter/model/photo.dart';

class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewAdvanced(),
    );
  }
}

class ListViewAdvanced extends StatefulWidget {
  const ListViewAdvanced({Key? key}) : super(key: key);

  @override
  _ListViewAdvancedState createState() => _ListViewAdvancedState();
}

class _ListViewAdvancedState extends State<ListViewAdvanced> {
  late Future<List<Photo>> lsPhoto;

  void initState() {
    super.initState();
    lsPhoto = Photo.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listview Nâng cao"),
        ),
        body: FutureBuilder(
          future: lsPhoto,
          builder: (BuildContext context, AsyncSnapshot<List<Photo>> snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              return ListView.builder(
                itemCount: data!.length,
                itemBuilder: (BuildContext context, int index) {
                  Photo p = data[index];
                  return ListTile(
                    title: Text(p.title),
                  );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ));
  }
}
