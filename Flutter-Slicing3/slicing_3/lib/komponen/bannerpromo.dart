import 'package:flutter/material.dart';

class BannerPromo extends StatelessWidget {
  final String banner;
  const BannerPromo({super.key, required this.banner});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: double.infinity,
        // color: Colors.red,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(banner), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
