import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Beranda.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Text("Selamat Datang di Aplikasi Serbaguna"),
            SizedBox(
              height: spacing,
            ),
            Container(
              height: 200,
              color: Colors.grey,
              child: Center(
                  child: Text(
                "Carousel",
                style: TextStyle(color: Colors.white),
              )),
            ),
            SizedBox(
              height: spacing + 12,
            ),
            Row(
              children: [
                TombolBeranda(
                    icon: Icons.calendar_month,
                    label: "Absensi",
                    color: Colors.yellow[900]!),
                SizedBox(
                  width: spacing,
                ),
                TombolBeranda(
                    icon: Icons.gamepad,
                    label: "Game Lempar Dadu",
                    color: Colors.redAccent),
              ],
            ),
            SizedBox(
              height: spacing,
            ),
            Row(
              children: [
                TombolBeranda(
                    icon: Icons.three_g_mobiledata,
                    label: "Tombol 3",
                    color: Colors.redAccent),
                SizedBox(
                  width: spacing,
                ),
                TombolBeranda(
                    icon: Icons.four_g_mobiledata,
                    label: "Tombol 4",
                    color: Colors.redAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
