import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menupoin extends StatelessWidget {
  final String poin;
  final String judulpoin;
  final String gambar;
  const Menupoin({
    super.key,
    required this.poin,
    required this.judulpoin,
    required this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Colors.grey.shade400,
            thickness: 1,
            width: 10,
          ),
        ),
        SizedBox(width: 5),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: Image(image: AssetImage(gambar)),
                ),
                SizedBox(width: 5),
                Text(
                  poin,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(judulpoin, style: GoogleFonts.poppins(fontSize: 10)),
          ],
        ),
      ],
    );
  }
}
