import 'package:flutter/foundation.dart';

class AuthProvider extends ChangeNotifier {
  final bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  void login() {
    // this function will take some auth data add pass it to the login service.
    //If the login service returns a success, the login will store values here
  }

  void register() {
    // this will also run a function and send it to the register service
  }
}
