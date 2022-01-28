// import 'package:flutter/cupertino.dart';
// import 'package:hello_flutter/model/profile.dart';
// import 'package:hello_flutter/service/api_status.dart';
// import 'package:hello_flutter/service/service_profile.dart';

// class ProfileViewModel extends ChangeNotifier {
//   bool _isLoading = false;
//   Profile _profile = new Profile();

//   bool get loading => _isLoading;
//   Profile get profile => _profile;

//   setLoading(bool loading) async {
//     _isLoading = loading;
//     notifyListeners();
//   }

//   setProfile(Profile profile) async {
//     _profile = profile;
//     notifyListeners();
//   }

//   getProfile() async {
//     setLoading(true);
//     var response = await ProfileService().getProfile();
//     if (response is Success) {
//       setProfile(response.response as Profile);
//     } else {
//       return "User error";
//     }

//     setLoading(false);
//   }
// }
