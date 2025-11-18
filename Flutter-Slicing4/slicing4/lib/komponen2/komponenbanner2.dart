import 'package:flutter/material.dart';

class KomponenBanner2 extends StatelessWidget {
  final String banner;
  const KomponenBanner2({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: Image.asset(banner).image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
