import 'dart:convert' as convert;
import 'package:hello_flutter/model/news.dart';
import 'package:http/http.dart' as http;

class ProfileService {
  // static Future<New> getProfile() async {
  //   var response = await http.get(Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2021-10-10&sortBy=publishedAt&apiKey=88cc61906ef84b5a99890d34c784ca9a"));
  //   if (response.statusCode == 200) {
  //     var jsonResponse = convert.jsonDecode(response.body);
  //     return New.fromJson(jsonResponse);
  //   } else {
  //     throw Exception("Fail");
  //   }
  // }
}
