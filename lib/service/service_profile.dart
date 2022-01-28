import 'dart:convert' as convert;
import 'package:hello_flutter/model/profile.dart';
import 'package:http/http.dart' as http;

class ProfileService {
  static Future<Profile> getProfile() async {
    var response = await http.get(Uri.https('randomuser.me', 'api'));

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      return Profile.fromJson(jsonResponse);
    } else {
      throw Exception("Fail");
    }
  }
}
