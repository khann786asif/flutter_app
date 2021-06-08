import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/MyDrawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("My App", style: TextStyle(fontSize: 24),), centerTitle: true,),
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
