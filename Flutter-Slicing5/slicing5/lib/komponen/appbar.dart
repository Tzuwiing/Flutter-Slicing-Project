import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(backgroundColor: Colors.blue),
          Container(
            padding: EdgeInsets.all(10),
            // height: 15,
            // width: 250,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Icon(Icons.warning_rounded),
                Text("Waspada Judi Online !"),
              ],
            ),
          ),
          CircleAvatar(child: Icon(Icons.help)),
        ],
      ),
    );
  }
}
