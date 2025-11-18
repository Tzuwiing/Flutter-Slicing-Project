import 'package:flutter/material.dart';

class KomponenBulet1 extends StatelessWidget {
  final String title;
  final IconData icon;
  const KomponenBulet1({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: Icon(icon, size: 40, color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
