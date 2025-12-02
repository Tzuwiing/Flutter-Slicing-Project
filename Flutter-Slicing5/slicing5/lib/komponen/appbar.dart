import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing5/decoration/set.dart';
import 'package:slicing5/komponen/cari.dart';
import 'package:slicing5/komponen/menupoin.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: lebar,
          height: tinggi * 0.3,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ClassName.color1, ClassName.color5],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Alamat Kirim", style: ClassName.style6),
              Row(
                children: [
                  Text("Pondok", style: ClassName.style1),
                  SizedBox(width: 3),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Utama",
                      style: GoogleFonts.openSans(
                        fontSize: 8,
                        color: ClassName.color1,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_bubble, color: ClassName.color5),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications, color: ClassName.color5),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart, color: ClassName.color5),
                  ),
                ],
              ),
              Text(
                "Perumahan Eco Village, Mekar Sa...",
                style: ClassName.style5,
              ),
              SizedBox(height: 15),
              Cari(),
            ],
          ),
        ),
        Positioned(
          top: 160,
          left: 20,
          right: 20,

          child: Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ClassName.color2, ClassName.color5],
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: ClassName.color5, width: 0.8),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 2),
                  blurRadius: 3,
                  color: Colors.grey,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hi Jusuf", style: ClassName.style2),
                      Text("Newbie", style: ClassName.style3),
                    ],
                  ),
                  SizedBox(height: 10),

                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ClassName.color5, width: 0.8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/dollar.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "3.689",
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Tukar A-Poin",
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              spacing: 20,
                              children: [
                                Menupoin(
                                  poin: "10",
                                  judulpoin: "Voucher",
                                  gambar: "assets/voucher.png",
                                ),
                                Menupoin(
                                  poin: "12",
                                  judulpoin: "Stamp",
                                  gambar: "assets/stamp.png",
                                ),
                                Menupoin(
                                  poin: "9",
                                  judulpoin: "Star",
                                  gambar: "assets/star.png",
                                ),
                                SizedBox(width: 1),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(color: ClassName.color2, thickness: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/virgo.png"),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Hubungkan Virgo",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: ClassName.color2,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward_ios, size: 10),
                            Spacer(),

                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 0.8,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 13,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/barcode.png"),
                                      ),
                                    ),
                                  ),

                                  Text(
                                    "Barcode Member",
                                    style: GoogleFonts.poppins(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
