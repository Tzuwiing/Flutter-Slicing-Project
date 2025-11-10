import 'package:flutter/material.dart';
import 'package:flutter_slicing/komponen/komponensaldo.dart';

class SaldoApp extends StatelessWidget {
  const SaldoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.symmetric(horizontal: 20),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 250, 249, 249),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 50, child: Image.asset('assets/wallet.png')),
                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rp. 1.000.000',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '0 Coins',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 120),
                KomponenSaldo(title: "Bayar", logo: "assets/arrow.png"),
                SizedBox(width: 15),
                KomponenSaldo(title: "Top Up", logo: "assets/plus.png"),
                SizedBox(width: 15),
                KomponenSaldo(title: "Lainnya", logo: "assets/more.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
