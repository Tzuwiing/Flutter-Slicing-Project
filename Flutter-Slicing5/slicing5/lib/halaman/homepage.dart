import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing5/decoration/set.dart';
import 'package:slicing5/komponen/flashsale.dart';
import 'package:slicing5/komponen/iklanbanner.dart';
import 'package:slicing5/komponen/appbar.dart';
import 'package:slicing5/komponen/menupromo.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color5,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar1(),
              SizedBox(height: 70),
              IklanBanner(),
              SizedBox(height: 5),
              MenuPromo(),
              SizedBox(height: 10,),
              FlashSale()
            ],
          ),
        ),
      ),
    );
  }
}
