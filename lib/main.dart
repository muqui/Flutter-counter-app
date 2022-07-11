import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'screens/counter_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen()
      home: Counterscreen()
    );
  }
}