import 'package:flutter/material.dart';

class Komponen3 extends StatelessWidget {
  const Komponen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
