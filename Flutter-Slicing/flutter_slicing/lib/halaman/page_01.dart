import 'package:flutter/material.dart';
import 'package:flutter_slicing/komponen/bannerinfo.dart';
import 'package:flutter_slicing/komponen/komponen_ui_1.dart';
import 'package:flutter_slicing/komponen/komponenmenu.dart';
import 'package:flutter_slicing/komponen/saldoapp.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    final Color activeColor = Colors.lightBlue;
    final Color inactiveColor = Colors.grey;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.lightBlue,
                    Colors.lightBlue,
                    Colors.lightBlue,
                    Colors.lightBlue,
                    Colors.white,
                    Colors.white,
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Mau makan apa hari ini ?',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/style.jpg'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                        border: Border.all(
                          color: Colors.white.withOpacity(0.4),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Menu Favorit Anda,\nSendiri atau Barengan",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.25),
                                    blurRadius: 4,
                                    offset: Offset(1, 2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              'assets/fastfood.png',
                              height: 130,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      KomponenUi1(
                        logo: "assets/burger.png",
                        title: "Diskon Terus",
                      ),
                      KomponenUi1(
                        logo: "assets/store.png",
                        title: "Resto Terdekat",
                      ),
                      KomponenUi1(
                        logo: "assets/orangejuice.png",
                        title: "Minuman ",
                      ),
                      KomponenUi1(
                        logo: "assets/vegetables.png",
                        title: "Makanan  Sehat",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 30),
            SaldoApp(),
            SizedBox(height: 30),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    KomponenMenu(),
                    KomponenMenu(),
                    KomponenMenu(),
                    KomponenMenu(),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    KomponenMenu(),
                    KomponenMenu(),
                    KomponenMenu(),
                    KomponenMenu(),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Promo Hari Ini !",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: PageView(
                children: [
                  BannerInfo(banner: "assets/bannerongkir.png"),
                  BannerInfo(banner: "assets/bannerkue.png"),
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
                    'Home',
                    style: TextStyle(
                      color: activeColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
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
                    'assets/promo.png',
                    width: 28,
                    height: 28,
                    color: inactiveColor,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Promo',
                    style: TextStyle(
                      color: inactiveColor,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
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
                    'assets/chat.png',
                    width: 28,
                    height: 28,
                    color: inactiveColor,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Chat',
                    style: TextStyle(
                      color: inactiveColor,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
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
                    'assets/shoppingbag.png',
                    width: 28,
                    height: 28,
                    color: inactiveColor,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Riwayat',
                    style: TextStyle(
                      color: inactiveColor,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
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
