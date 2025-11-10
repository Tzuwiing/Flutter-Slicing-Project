import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuMore extends StatelessWidget {
  final String title;
  final IconData icon;

  const MenuMore({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purpleAccent.withOpacity(0.2),
          ),
          child: Icon(icon, size: 40, color: Colors.purple),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
