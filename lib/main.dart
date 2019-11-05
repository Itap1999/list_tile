import 'package:flutter/material.dart';
import 'package:list_tile/screens/dartsteller_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DarstellerlisteScreen(),
    );
  }
}

