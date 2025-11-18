import 'package:flutter/material.dart';

class KomponenView2 extends StatelessWidget {
  final String title;
  final String title2;
  final String title3;
  final Color color;
  final Color titlecolor;
  const KomponenView2({
    super.key,
    required this.title,
    required this.title2,
    required this.title3,
    required this.color,
    required this.titlecolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        10.0,
      ), // Padding ini memberi jarak antar kartu
      child: Container(
        height: 100,
        // width: 10,  <-- HAPUS BARIS INI
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: titlecolor,
              ),
              textAlign: TextAlign.center, // Tambahan agar teks rata tengah
            ),
            Text(
              title2,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: titlecolor,
              ),
              textAlign: TextAlign.center, // Tambahan agar teks rata tengah
            ),
            SizedBox(height: 30),
            Text(title3, style: TextStyle(fontSize: 10, color: titlecolor)),
          ],
        ),
      ),
    );
  }
}
