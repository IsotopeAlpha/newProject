import 'package:flutter/material.dart';
import 'package:new_project/screens/login_page.dart';

class Routes {
  static const loginPage = '/login';

  static Map<String, Widget Function(BuildContext)> registerRoutes() {
    return {loginPage: (context) => const LoginPage()};
  }
}
