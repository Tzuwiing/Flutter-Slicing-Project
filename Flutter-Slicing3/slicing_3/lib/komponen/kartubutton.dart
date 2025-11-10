import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KartuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  const KartuButton({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon, size: 40, color: Colors.purple),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: const Color.fromARGB(255, 95, 94, 94),
          ),
        ),
      ],
    );
  }
}
