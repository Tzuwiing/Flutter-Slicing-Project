import 'package:flutter/material.dart';
import 'package:slicing5/komponen/appbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SingleChildScrollView(child: Column(children: [AppBar1()])),
    );
  }
}
