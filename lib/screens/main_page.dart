import 'package:flutter/material.dart';

import 'package:test_app_stepnikova/functions/number_system_converter.dart';

///The widget is the main screen of application.
class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color color = const Color(0xffaabbcc);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: GestureDetector(
        onTap: () => setState(() {
          color = Color(int.parse(
              NumberSystemConverter().decToHex().replaceAll('#', '0xff'),),);
        }),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: color,
          child: const Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
