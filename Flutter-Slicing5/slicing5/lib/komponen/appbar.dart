import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing5/decoration/set.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    final double tinggi = MediaQuery.of(context).size.height;
    final double lebar = MediaQuery.of(context).size.width;
    // return Padding(
    //   padding: const EdgeInsets.all(10),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       CircleAvatar(backgroundColor: Colors.blue),
    //       Container(
    //         padding: EdgeInsets.all(10),
    //         // height: 15,
    //         // width: 250,
    //         decoration: BoxDecoration(
    //           color: Colors.grey.withOpacity(0.2),
    //           borderRadius: BorderRadius.circular(15),
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           spacing: 20,
    //           children: [
    //             Icon(Icons.warning_rounded),
    //             Text("Waspada Judi Online !"),
    //           ],
    //         ),
    //       ),
    //       CircleAvatar(child: Icon(Icons.help)),
    //     ],
    //   ),
    // );
    return Container(
      width: lebar,
      height: tinggi * 0.4,
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
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
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
        ],
      ),
    );
  }
}
