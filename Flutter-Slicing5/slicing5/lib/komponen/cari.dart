import 'package:flutter/material.dart';
import 'package:slicing5/decoration/set.dart';

class Cari extends StatelessWidget {
  const Cari({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: ClassName.color5,
              hintText: "Search",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: ClassName.color5, width: 0.8),
              ),
              constraints: BoxConstraints(maxHeight: 35),
              prefixIcon: Icon(Icons.search, size: 20),
            ),
          ),
        ),
        Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(100),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: ClassName.color5, width: 0.8),
          ),
          child: Image(image: Image.asset("assets/cardscan.png").image),
        ),
        Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(100),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: ClassName.color5, width: 0.8),
          ),
          child: Image(image: Image.asset("assets/favorite.png").image),
        ),
      ],
    );
  }
}
