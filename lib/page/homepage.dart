import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tukang/page/berita.dart';
import 'package:tukang/page/financial.dart';
import 'package:tukang/page/partner.dart';
import 'package:tukang/page/tips.dart';
import 'package:tukang/widget/navbar.dart';
import 'package:tukang/widget/tumpuk.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  void _onItemTapped(int index) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'lib/images/logo_yellow.png',
                      width: 150,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffFFDB5C),
                        const Color.fromARGB(255, 241, 234, 168),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 8),
                        child: Text(
                          "Hi, abidin",
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 8, bottom: 100),
                        child: Text(
                          "Pilih layanan yang sesuai dengan kebutuhan",
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                stackkkk(),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Image.asset('lib/images/banner1.jpg'),
              ),
            ),
            Partner(),
            Financial(),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Image.asset('lib/images/baner 2.jpg'),
              ),
            ),
            Berita(),
            Tips(),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(selectedItem: 0),
    );
  }
}
