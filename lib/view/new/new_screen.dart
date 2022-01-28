import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hello_flutter/model/news.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:webview_flutter/webview_flutter.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsApp(),
    );
  }
}

class NewsApp extends StatefulWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  _NewsAppState createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {
  late Future<News> news;
  final Completer<WebViewController> _completer =
        new Completer<WebViewController>();

  Future<News> getNews() async {
    var response = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=tesla&from=2021-10-14&sortBy=publishedAt&apiKey=88cc61906ef84b5a99890d34c784ca9a"));
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse);
      return News.fromJson(jsonResponse);
    } else {
      throw Exception("Fail");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    news = getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
                'Flutter News'
            ),
          ),
        ),
        body: //WebView(
            //initialUrl: "https://google.com",
            //onWebViewCreated: (WebViewController webViewController){
              //_completer.complete(webViewController);
            //},
          //),
        // body: FutureBuilder(
        //   future: news,
        //   builder: (BuildContext context, AsyncSnapshot<News> snapshot) {
        //     if (snapshot.hasData) {
        //       var data = snapshot.data;
        //       //News mNew = data!;
        //       //return itemNews(mNew.articles.first.urlToImage, mNew.articles.first.title);
        //       return ListView.builder(
        //           itemCount: 1,
        //           itemBuilder: (BuildContext context, int index) {
        //             News mNews = data!;
        //             // return itemNews(
        //             //     mNews.articles[index].urlToImage,
        //             //     mNews.articles[index].title,
        //             //     mNews.articles[index].url,
        //             //     mNews.articles[index].content,
        //             // );
        //             return WebView(
        //               initialUrl: "https://markets.businessinsider.com/news/stocks/elon-musk-tesla-stock-sales-higher-taxes-electric-vehicles-billionaires-2021-11",
        //               javascriptMode: JavascriptMode.unrestricted,
        //             );
        //           }
        //       );
        //     } else
        //       return Center(child: CircularProgressIndicator());
        //   },
        //
        // )
    );
  }
}


Widget itemNews(img, title, url, content) =>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.black12,
        child: Column(
          children: [
            Image.network(img!),
            SizedBox(
              height: 10,
            ),
            // Text(
            //     title,
            //   style: TextStyle(
            //     fontSize: 18,
            //     color: Colors.blueAccent,
            //     fontWeight: FontWeight.bold
            //   ),
            // ),
            TextButton(
                onPressed: (){
                  WebView(
                    initialUrl: url,
                    javascriptMode: JavascriptMode.unrestricted,
                  );
                },
                child: Text(
                    title,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                )
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                content
            )
          ],
        ),
      ),
    );


