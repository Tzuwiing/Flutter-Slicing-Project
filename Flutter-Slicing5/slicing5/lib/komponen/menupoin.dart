import 'package:flutter/material.dart';

class Menupoin extends StatelessWidget {
  final String poin;
  final String judulpoin;
  const Menupoin({super.key, required this.poin, required this.judulpoin});

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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(poin), Text(judulpoin)],
        ),
      ],
    );
  }
}
