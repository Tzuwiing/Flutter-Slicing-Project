import 'package:flutter/material.dart';
import 'package:slicing5/decoration/set.dart';
import 'package:slicing5/komponen/appbar.dart';

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
              SizedBox(
                height: 180,

                child: PageView(
                  children: [
                    Image.asset("assets/banner-15.png", fit: BoxFit.cover),
                    Image.asset("assets/banner-16.png", fit: BoxFit.cover),
                    Image.asset("assets/banner-17.png", fit: BoxFit.cover),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
