import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_3/komponen/bannerpromo.dart';
import 'package:slicing_3/komponen/kartukai.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:lucide_icons_flutter/test_icons.dart';
import 'package:slicing_3/komponen/menuatas.dart';
import 'package:slicing_3/komponen/menumore.dart';
import 'package:slicing_3/komponen/mnkereta.dart';
import 'package:slicing_3/komponen/trip.dart';

class Homepage extends StatelessWidget {
  final Color activeColor = Colors.purple;
  final Color inactiveColor = Colors.grey;
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    image: DecorationImage(
                      image: AssetImage('assets/stasiun3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Menuatas(),
                ),
                Kartukai(),
              ],
            ),
            SizedBox(height: 155),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 25,
                  children: [
                    MenuKereta(
                      title: "Antarkota",
                      icon: Icons.train,
                      color: Colors.green,
                    ),
                    MenuKereta(
                      title: "Komuter",
                      icon: Icons.commute,
                      color: Colors.orange,
                    ),
                    MenuKereta(
                      title: "Cepat",
                      icon: Icons.bolt,
                      color: Colors.red,
                    ),
                    MenuKereta(
                      title: "MRT",
                      icon: Icons.subway,
                      color: Colors.blue,
                    ),
                    MenuKereta(
                      title: "LRT",
                      icon: Icons.tram,
                      color: Colors.purple,
                    ),
                    MenuKereta(
                      title: "Bandara",
                      icon: Icons.local_airport,
                      color: Colors.cyan,
                    ),
                    MenuKereta(
                      title: "Kargo",
                      icon: Icons.local_shipping_outlined,
                      color: Colors.brown,
                    ),
                    MenuKereta(
                      title: "Wisata",
                      icon: Icons.explore_outlined,
                      color: Colors.teal,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MenuMore(title: "Hotel", icon: Icons.hotel),
                MenuMore(
                  title: "Kartu Multi Trip",
                  icon: LucideIcons.creditCard,
                ),
                MenuMore(title: "Logistik", icon: LucideIcons.box),
                MenuMore(title: "Lainnya", icon: Icons.view_module_rounded),
              ],
            ),
            SizedBox(height: 10),
            Trip(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promo Terbaru",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.purpleAccent, width: 2),
                    ),
                    child: Center(
                      child: Text(
                        "Lihat Semua",
                        style: GoogleFonts.poppins(
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: PageView(
                children: [
                  BannerPromo(banner: "assets/banner1.png"),
                  BannerPromo(banner: "assets/banner2.png"),
                  BannerPromo(banner: "assets/banner3.png"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10.0,
        height: 70,
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/home.png',
                    width: 28,
                    height: 28,
                    color: activeColor,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Beranda',
                    style: GoogleFonts.poppins(
                      color: activeColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/keretarel.png',
                    width: 28,
                    height: 28,
                    color: inactiveColor,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Kereta',
                    style: GoogleFonts.poppins(
                      color: inactiveColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/ticket.png',
                    width: 28,
                    height: 28,
                    color: inactiveColor,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Tiket Saya',
                    style: GoogleFonts.poppins(
                      color: inactiveColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/discount.png',
                    width: 28,
                    height: 28,
                    color: inactiveColor,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Promo',
                    style: GoogleFonts.poppins(
                      color: inactiveColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/user.png',
                    width: 28,
                    height: 28,
                    color: inactiveColor,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Akun',
                    style: GoogleFonts.poppins(
                      color: inactiveColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
