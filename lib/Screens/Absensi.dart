import 'package:flutter/material.dart';

class Absensi extends StatefulWidget {
  const Absensi({super.key});

  @override
  State<Absensi> createState() => _State();
}

double spacing = 12;

class _State extends State<Absensi> {
  @override
  Widget build(BuildContext context) {
    List listKelas = [
      "Alpro A",
      "Alpro B",
      "Alpro C",
      "Alpro D",
      "Alpro E",
      "PWEB A",
      "PWEB B",
      "PWEB C",
      "PWEB D",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Absensi"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Center(
                child: Text(
                  "ABSENSI MAHASISWAA",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ),
            SizedBox(
              height: spacing + 4,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: listKelas.length,
                  itemBuilder: (context, index) {
                    return PilihanKelas(namaKelas: listKelas[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class PilihanKelas extends StatelessWidget {
  final String namaKelas;
  const PilihanKelas({super.key, required this.namaKelas});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12, left: 16, right: 16),
      width: MediaQuery.of(context).size.width * 0.85,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.redAccent, borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Text(
        namaKelas,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 24, color: Colors.white),
      )),
    );
  }
}
