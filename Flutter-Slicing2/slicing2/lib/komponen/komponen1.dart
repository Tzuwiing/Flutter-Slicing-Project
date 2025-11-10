import 'package:flutter/material.dart';

class Komponen1 extends StatelessWidget {
  const Komponen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: 45,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ],
    );
  }
}
