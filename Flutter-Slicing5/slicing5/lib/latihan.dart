import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Latihan")),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image(image: AssetImage("assets/f9.png")),
      ),
    );
  }
}
