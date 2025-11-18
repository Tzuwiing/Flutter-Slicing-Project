import 'package:flutter/material.dart';
import 'package:slicing4/komponen2/komponenbanner2.dart';
import 'package:slicing4/komponen2/komponengeser.dart';

import 'package:slicing4/komponen2/komponenview2.dart';
import 'package:slicing4/komponen2/komponenwrap.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final PageController pageController = PageController(viewportFraction: 0.85);

  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 210,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Icon(
                                Icons.local_offer,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "15 Vouchers",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Pakai yuk!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.discount, color: Colors.blue),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Vouchers Plus",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Langganan Sekarang !",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Divider(color: Colors.white, thickness: 1),
                    SizedBox(height: 15),
                    SizedBox(
                      width: double.infinity,
                      height: 80,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Pencarian",
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.percent_rounded,
                            color: Colors.grey,
                          ),
                          fillColor: Colors.white,
                          suffixIcon: Icon(
                            Icons.send_rounded,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage("assets/calendar.png"),
                          // ),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        "Check-in Setiap Hari Koinnya",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "*Syarat & Ketentuan Berlaku",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),

                  Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: Center(
                      child: Text(
                        "Klaim",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Wrap(
              runSpacing: 20,
              spacing: 20,
              children: [
                KomponenWrap(title: "11.11"),
                KomponenWrap(title: "Gajian"),
                KomponenWrap(title: "Food"),
                KomponenWrap(title: "Drinks"),
                KomponenWrap(title: "Travel"),
                KomponenWrap(title: "Riding"),
                KomponenWrap(title: "Vacation"),
                KomponenWrap(title: "Hotel"),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Promo Hari Ini ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 180,
              width: double.infinity,
              child: PageView(
                controller: pageController, // <-- TAMBAHKAN CONTROLLER DI SINI
                children: [
                  KomponenView2(
                    title: "Diskon 80%",
                    title2: "Khusus Minuman Biru",
                    title3: "*Syarat dan ketentuan berlaku.",
                    color: Colors.blueAccent,
                    titlecolor: Colors.white,
                  ),
                  KomponenView2(
                    title: "Diskon 70%",
                    title2: "Khusus Minuman Merah",
                    title3: "*Syarat dan ketentuan berlaku.",
                    color: Colors.redAccent,
                    titlecolor: Colors.white,
                  ),
                  KomponenView2(
                    title: "Diskon 60%",
                    title2: "Khusus Minuman Hijau",
                    title3: "*Syarat dan ketentuan berlaku.",
                    color: Colors.green,
                    titlecolor: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Promo Makanan ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: Image.asset("assets/banner.png").image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Promo Liburan ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 20,
                children: [
                  KomponenGeser(banner: "assets/banner-4.png"),
                  KomponenGeser(banner: "assets/banner-5.png"),
                  KomponenGeser(banner: "assets/banner-6.png"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Promo Transportasi ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 20,
                children: [
                  KomponenGeser(banner: "assets/banner-1.png"),
                  KomponenGeser(banner: "assets/banner-2.png"),
                  KomponenGeser(banner: "assets/banner-3.png"),
                ],
              ),
            ),
            SizedBox(height: 50),
            KomponenBanner2(banner: "assets/banner-10.png"),
            SizedBox(height: 20),
            KomponenBanner2(banner: "assets/banner-11.png"),
            SizedBox(height: 20),
            KomponenBanner2(banner: "assets/banner-12.png"),
          ],
        ),
      ),
    );
  }
}
