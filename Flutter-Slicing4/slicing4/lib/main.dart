import 'package:flutter/material.dart';
import 'package:slicing4/latihan.dart';
import 'package:slicing4/latihan01.dart';
import 'package:slicing4/profile.dart';
import 'package:slicing4/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Latihan01(),
    );
  }
}

class NavigasiBawah extends StatefulWidget {
  const NavigasiBawah({super.key});

  @override
  State<NavigasiBawah> createState() => _NavigasiBawahState();
}

class _NavigasiBawahState extends State<NavigasiBawah> {
  int selectedIndex = 0;
  final List<Widget> pages = [Latihan1(), Shop(), Profile()];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
