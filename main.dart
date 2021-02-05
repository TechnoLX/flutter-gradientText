import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final DateTime date = DateTime.now();
    print(date);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Gradient TextStyle'),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        'Hello Flutter',
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 40,
            foreground: Paint()
              ..shader = ui.Gradient.linear(
                const Offset(0, 60),
                const Offset(200, 10),
                <Color>[
                  Colors.blue,
                  Colors.red,
                ],
              )),
      )),
    );
  }
}
