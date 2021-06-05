import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("My App"),),
      body: Material(
        color: Colors.lightGreenAccent,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              color: Colors.blueAccent,
              height: 30.0,
              child: Text("Hello"),
            ),
          ),
        ),
      ),
    );
  }
}
