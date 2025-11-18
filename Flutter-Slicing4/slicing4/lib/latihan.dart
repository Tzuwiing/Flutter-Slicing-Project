import 'package:flutter/material.dart';
import 'package:slicing4/komponen1/Komponenbanner.dart';
import 'package:slicing4/komponen1/komponenbulet1.dart';
import 'package:slicing4/komponen1/komponencard.dart';
import 'package:slicing4/komponen1/komponenmart.dart';
import 'package:slicing4/komponen1/komponenview.dart';

class Latihan1 extends StatefulWidget {
  const Latihan1({super.key});

  @override
  State<Latihan1> createState() => _Latihan1State();
}

class _Latihan1State extends State<Latihan1> {
  final PageController pageController = PageController(viewportFraction: 0.85);

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.blue, size: 25),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(Icons.shopping_cart, size: 30, color: Colors.white),
          ),
          SizedBox(width: 20),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(Icons.notifications, size: 30, color: Colors.white),
          ),
          SizedBox(width: 20),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(Icons.settings, size: 30, color: Colors.white),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          KomponenCard(
                            title: "Minuman",
                            image: "assets/orange-juice.png",
                          ),
                          KomponenCard(
                            title: "Makanan",
                            image: "assets/burger.png",
                          ),
                          KomponenCard(
                            title: "Fast Food",
                            image: "assets/fastfood.png",
                          ),
                          KomponenCard(
                            title: "Buah & Sayur",
                            image: "assets/vegetables.png",
                          ),
                          KomponenCard(
                            title: "Restoran",
                            image: "assets/store.png",
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.white, thickness: 1),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: Image.asset(
                                      "assets/wallet.png",
                                    ).image,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Rp. 500.000",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "0 Coins",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  KomponenBulet1(
                    title: "Transfer",
                    icon: Icons.transfer_within_a_station,
                  ),
                  KomponenBulet1(title: "Top Up", icon: Icons.local_atm),
                  KomponenBulet1(title: "Tarik Tunai", icon: Icons.print),
                  KomponenBulet1(title: "Konversi", icon: Icons.change_circle),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  KomponenBulet1(title: "Kuota", icon: Icons.wifi),
                  KomponenBulet1(
                    title: "Pulsa",
                    icon: Icons.four_g_plus_mobiledata,
                  ),
                  KomponenBulet1(title: "Ecommerce", icon: Icons.shopping_cart),
                  KomponenBulet1(title: "Nabung", icon: Icons.attach_money),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Super Deal Hari Ini",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 180,
                width: double.infinity,
                child: PageView(
                  controller:
                      pageController, // <-- TAMBAHKAN CONTROLLER DI SINI
                  children: [
                    KomponenView(
                      title: "Diskon 80%",
                      title2: "Khusus Minuman Biru",
                      title3: "*Syarat dan ketentuan berlaku.",
                      color: Colors.blueAccent,
                      titlecolor: Colors.white,
                    ),
                    KomponenView(
                      title: "Diskon 70%",
                      title2: "Khusus Minuman Merah",
                      title3: "*Syarat dan ketentuan berlaku.",
                      color: Colors.redAccent,
                      titlecolor: Colors.white,
                    ),
                    KomponenView(
                      title: "Diskon 60%",
                      title2: "Khusus Minuman Hijau",
                      title3: "*Syarat dan ketentuan berlaku.",
                      color: Colors.green,
                      titlecolor: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Jangan Lewatkan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Belanja hemat, dapat cashback lagi !",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      KomponenMart(
                        disc: "30% OFF",
                        image: "assets/alfamart2.png",
                      ),
                      SizedBox(width: 20),
                      KomponenMart(
                        disc: "40% OFF",
                        image: "assets/alfamidi2.png",
                      ),
                      SizedBox(width: 20),
                      KomponenMart(
                        disc: "50% OFF",
                        image: "assets/indomaret2.png",
                      ),
                      SizedBox(width: 20),
                      KomponenMart(
                        disc: "60% OFF",
                        image: "assets/familymart.png",
                      ),
                      SizedBox(width: 20),
                      KomponenMart(disc: "70% OFF", image: "assets/lawson.jpg"),
                      SizedBox(width: 20),
                      KomponenMart(
                        disc: "80% OFF",
                        image: "assets/mugunghwa.png",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              KomponenBanner(banner: "assets/banner-10.png"),
              SizedBox(height: 20),
              KomponenBanner(banner: "assets/banner-11.png"),
              SizedBox(height: 20),
              KomponenBanner(banner: "assets/banner-12.png"),
            ],
          ),
        ),
      ),

      
      
    );
  }
}
