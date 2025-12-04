import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing5/komponenkecil/buletpromo.dart';

class MenuPromo extends StatelessWidget {
  const MenuPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Lihat Semua Promo",
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.blue[900],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BuletPromo(gambar: "assets/produkon.png", judul: "Produk On"),
              BuletPromo(gambar: "assets/kalzat.png", judul: "KalZat"),
              BuletPromo(gambar: "assets/debit.png", judul: "Tagihan"),
              BuletPromo(gambar: "assets/giftcard.png", judul: "Gift Card"),
              BuletPromo(gambar: "assets/bonuspoin.png", judul: "Bonus Point"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BuletPromo(gambar: "assets/bonuspoin.png", judul: "Bonus Point"),
              BuletPromo(gambar: "assets/giftcard.png", judul: "Gift Card"),
              BuletPromo(gambar: "assets/debit.png", judul: "Tagihan"),
              BuletPromo(gambar: "assets/kalzat.png", judul: "KalZat"),
              BuletPromo(gambar: "assets/produkon.png", judul: "Produk On"),
            ],
          ),
        ],
      ),
    );
  }
}
