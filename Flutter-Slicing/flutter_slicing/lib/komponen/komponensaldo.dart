import 'package:flutter/material.dart';

class KomponenSaldo extends StatelessWidget {
  final String title;
  final String logo;
  const KomponenSaldo({super.key, required this.title, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 40, child: Image.asset(logo)),
        Text(title, style: TextStyle(fontSize: 13)),
      ],
    );
  }
}
