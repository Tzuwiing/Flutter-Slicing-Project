import 'package:flutter/material.dart';

class KomponenAkun extends StatelessWidget {
  final IconData icon;
  final String menu;
  const KomponenAkun({super.key, required this.icon, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.black),
                SizedBox(width: 10),
                Text(
                  menu,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.black),
          ],
        ),
        Divider(),
        SizedBox(height: 10),
      ],
    );
  }
}
