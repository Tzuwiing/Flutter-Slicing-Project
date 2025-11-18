import 'package:flutter/material.dart';

class KomponenGeser extends StatelessWidget {
  final String banner;
  const KomponenGeser({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(banner).image,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
