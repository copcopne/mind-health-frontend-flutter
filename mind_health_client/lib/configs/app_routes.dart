import 'package:flutter/material.dart';
class AppRoutes {
  static const String welcome = '/';
  static const String login = '/login';
  static const String register = '/register';

  static Map<String, WidgetBuilder> get routes {
    return {
      welcome: (context) => const WelcomeScreen(), 
    };
  }
}

// placeholder tạm
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text("Welcome")));
}