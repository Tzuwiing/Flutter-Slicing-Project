import 'package:flutter/material.dart';

class IklanBanner extends StatelessWidget {
  const IklanBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banner = [
      "assets/banner-15.png",
      "assets/banner-16.png",
      "assets/banner-17.png",
    ];
    return SizedBox(
      height: 160,
      child: PageView.builder(
        itemCount: banner.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(15),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
              image: DecorationImage(
                image: AssetImage(banner[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
