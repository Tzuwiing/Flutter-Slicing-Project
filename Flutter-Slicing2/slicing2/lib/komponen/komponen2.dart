import 'package:flutter/material.dart';

class Komponen2 extends StatelessWidget {
  const Komponen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: 45,
          height: 10,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ],
    );
  }
}
