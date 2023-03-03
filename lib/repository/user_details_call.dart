import 'dart:convert';

import '../model/user_details_model.dart';
import 'package:http/http.dart' as http;

Future<LoginModel> fetchLoginModel() async {
  var url =
      "http://185.188.127.100/WaselleApi/api/LoginDetails?UName=testtrader@gmail.com&Password=123&UserType=Customer";
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return LoginModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load LoginModel');
  }
}

// List<LoginModel> userData = [];
// Future<List<LoginModel>> getData() async {
//   final response = await http
//       .get(Uri.parse('https://637dbfffcfdbfd9a639bba1e.mockapi.io/sample'));
//   var data = jsonDecode(response.body.toString());
//   if (response.statusCode == 200) {
//     for (Map<String, dynamic> index in data) {
//       userData.add(LoginModel.fromJson(index));
//     }
//   }
//   return userData;
// }
