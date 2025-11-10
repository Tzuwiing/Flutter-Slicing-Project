import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing_3/komponen/buttonmn.dart';

class Menuatas extends StatefulWidget {
  const Menuatas({super.key});

  @override
  State<Menuatas> createState() => _MenuatasState();
}

class _MenuatasState extends State<Menuatas> {
  final List<String> countries = ["ID", "BR", "FR"];
  String? selectedCountry = "ID";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Pagi",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "Jusuf Fathan Nuradly",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Buttonmn(icon: LucideIcons.shoppingCart),
              SizedBox(width: 10),
              Buttonmn(icon: LucideIcons.mail),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 100,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedCountry,
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                    dropdownColor: Colors.blueGrey[100],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    items: countries.map((String country) {
                      return DropdownMenuItem<String>(
                        value: country,
                        child: Text(
                          country,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCountry = newValue;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
