import 'package:flutter/material.dart';

import 'package:test_app_stepnikova/functions/number_system_converter.dart';

///The widget is the main screen of application.
class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color color = const Color(0xffaabbcc);
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: GestureDetector(
        onTap: () => setState(() {
          selected = !selected;
          color = Color(
            int.parse(
              NumberSystemConverter().decToHex().replaceAll('#', '0xff'),
            ),
          );
        }),
        child: AnimatedContainer(
          height: double.infinity,
          width: double.infinity,
          color: color,
          duration: const Duration(seconds: 3),
          child: Center(
            child: AnimatedDefaultTextStyle(
              curve: Curves.easeInOutQuad,
              style: selected
                  ? const TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  : const TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              duration: const Duration(seconds: 3),
              child: const Text('Hey there'),
            ),
          ),
        ),
      ),
    );
  }
}
