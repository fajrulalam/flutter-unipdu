import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertemuan4/Screens/Account.dart';
import 'package:flutter_pertemuan4/Screens/HomeBody.dart';
import 'package:flutter_pertemuan4/Screens/Setting.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

double spacing = 12;
int currentIndexNavBar = 0;
Widget currentBody = Setting();
Color color = Colors.white;

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Beranda"),
        ),
        body: currentBody,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ],
          currentIndex: currentIndexNavBar,
          selectedItemColor: Colors.redAccent,
          onTap: (indexYangDiklik) {
            currentIndexNavBar = indexYangDiklik;
            switch (indexYangDiklik) {
              case 0:
                currentBody = HomeBody();
                break;
              case 1:
                currentBody = Account();
                break;
              case 2:
                currentBody = Setting();
                break;
            }
            setState(() {});
          },
        ));
  }
}

class TombolBeranda extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const TombolBeranda(
      {super.key,
      required this.icon,
      required this.label,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        padding: EdgeInsets.all(10),
        child: Ink(
          child: InkWell(
            onTap: () {
              //pake ini untuk pindah halaman
              print("Ini terpencet:  $label");
              Navigator.pushNamed(context, label);
            },
            child: Column(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(
                  height: spacing - 4,
                ),
                Text(
                  label,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
