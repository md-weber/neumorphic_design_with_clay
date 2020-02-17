import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: ClayContainer(
            height: 150,
            width: 150,
            surfaceColor: Colors.green,
            parentColor: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClayContainer(
                color: Colors.green,
                borderRadius: 50,
                child: Icon(
                  Icons.pie_chart,
                  size: 100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
