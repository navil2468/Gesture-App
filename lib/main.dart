import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Hand"),
          elevation: 100,
          backgroundColor: Color.fromARGB(255, 245, 163, 0),
        ),
        body: Center(
          child: Image(image: AssetImage('images/Hand high five.png'))
        ),
      ),
    );
  }
}
