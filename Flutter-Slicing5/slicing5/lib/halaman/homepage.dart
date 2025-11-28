import 'package:flutter/material.dart';
import 'package:slicing5/decoration/set.dart';
import 'package:slicing5/komponen/appbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color3,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar1()
            ]
         )
       ),
    );
  }
}
