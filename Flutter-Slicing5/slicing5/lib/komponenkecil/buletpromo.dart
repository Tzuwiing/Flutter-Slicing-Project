import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuletPromo extends StatelessWidget {
  final String gambar;
  final String judul;
  const BuletPromo({super.key, required this.gambar, required this.judul});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade200,
            image: DecorationImage(
              image: Image.asset(gambar).image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Text(judul, style: GoogleFonts.poppins(fontSize: 10)),
      ],
    );
  }
}
