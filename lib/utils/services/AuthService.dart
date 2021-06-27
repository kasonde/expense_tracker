import 'dart:convert';

import 'package:expense_tracker/utils/models/User.dart';
import 'package:expense_tracker/utils/urls.dart';

import 'package:http/http.dart' as http;

class AuthService {
  Future<User> login() async {
    // this function is response for logging in users
    try {
      // perform http request here to the server
      http.Response response =
          await http.post(Uri.dataFromString(Urls.ROOT_SERVER + "/auth/"));
      if (response.statusCode != 200) {
        throw Exception("Incorrect username or password");
      }
      Map responseJson = jsonDecode(response.body);
      return User.fromAuthJson(responseJson);
    } catch (e) {
      throw Exception("Unable to complete login");
    }
  }
}
