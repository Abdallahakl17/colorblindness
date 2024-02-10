import 'package:flutter/material.dart';

import '../screens/login/Login_screen.dart';

abstract class Routes {
  static Future<dynamic> navigateToLogin(BuildContext context) {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
