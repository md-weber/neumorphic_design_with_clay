import 'package:flutter/material.dart';
import 'package:neumorphic_design_with_clay/screens/home_screen.dart';

void main() => runApp(ClayApp());

class ClayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
