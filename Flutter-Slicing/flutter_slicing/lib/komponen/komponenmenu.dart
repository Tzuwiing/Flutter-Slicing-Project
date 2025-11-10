import 'package:flutter/material.dart';

class KomponenMenu extends StatelessWidget {
  const KomponenMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
