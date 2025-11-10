import 'package:flutter/material.dart';

class BannerInfo extends StatelessWidget {
  final String banner;
  const BannerInfo({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: double.infinity,
        // color: Colors.red,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(banner), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
