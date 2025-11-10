import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_3/komponen/kartubutton.dart';

class Kartukai extends StatelessWidget {
  const Kartukai({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      bottom: -130,
      child: Container(
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          // border: Border.all(color: Colors.black),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 3)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/logoKAY.png"),
                                ),
                              ),
                            ),
                            Text(
                              "KAYPay",
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "RP 19.000.000",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                              color: Colors.purple,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 70,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                    ),
                    Row(
                      spacing: 25,
                      children: [
                        KartuButton(title: "Scan", icon: Icons.qr_code),
                        KartuButton(
                          title: "Top Up",
                          icon: Icons.wallet_membership,
                        ),
                        KartuButton(title: "Riwayat", icon: Icons.history),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.grey, thickness: 0.5, height: 10),
                SizedBox(height: 10),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/coin.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "19",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                        Text(
                          " Railpoin",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 5,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/frame.png"),
                              ),
                            ),
                          ),
                          // Icon(
                          //   LucideIcons.circleStar,
                          //   size: 30,
                          //   color: Colors.purple,
                          // ),
                          Text(
                            "Premium",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.purple,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              LucideIcons.chevronRight,
                              size: 25,
                              color: Colors.purple,
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
        ),
      ),
    );
  }
}
