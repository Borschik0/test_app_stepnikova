import 'package:flutter/material.dart';
import 'package:test_app_stepnikova/screens/main_page.dart';

///This widget is the root of application.
class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      home: MainPage(),
    );
  }
}
