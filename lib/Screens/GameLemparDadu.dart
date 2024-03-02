import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameLemparDadu extends StatefulWidget {
  const GameLemparDadu({super.key});

  @override
  State<GameLemparDadu> createState() => _GameLemparDaduState();
}

double spacingAntarRow = 12;
bool isNyala = true;
int pemain = 1;
int hasilLempar = 0;
int counter = 0;
int skorPemain1 = 0;
int skorPemain2 = 0;
bool isSudahWayah = false;
List<int> recordPemain1 = [];
List<int> recordPemain2 = [];

class _GameLemparDaduState extends State<GameLemparDadu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade200,
        elevation: 50,
        title: Text(
          'Game Lempar Dadu',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        color: isNyala == true ? Colors.white : Colors.grey,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text('Wayahe Pemain $pemain')),
            SizedBox(
              height: spacingAntarRow + 8,
            ),
            Row(
              children: [
                Expanded(child: Text('Ganti Warna Background')),
                ElevatedButton(
                    onPressed: () {
                      print("Sebelum: $isNyala");
                      isNyala = !isNyala;
                      print("Setelah dirubah: $isNyala");
                      setState(() {});
                    },
                    child: Text('Ganti Warna'))
              ],
            ),
            SizedBox(
              height: spacingAntarRow,
            ),
            Row(
              children: [
                Expanded(child: Text('Lempar Dadu')),
                ElevatedButton(
                    onPressed: isSudahWayah == true
                        ? null
                        : () {
                            isSudahWayah = true;
                            Random randomDadu = Random();
                            hasilLempar = randomDadu.nextInt(6) + 1;
                            if (pemain == 1) {
                              skorPemain1 = skorPemain1 + hasilLempar;
                              recordPemain1.add(hasilLempar);
                            } else {
                              skorPemain2 = skorPemain2 + hasilLempar;
                              recordPemain2.add(hasilLempar);
                            }
                            print("Skor pemain1 $recordPemain1");
                            print("Skor pemain2 $recordPemain2");

                            if (recordPemain2.length == 3) {
                              String pesanMenang = "";
                              if (skorPemain1 > skorPemain2) {
                                pesanMenang = "Pemain 1 yang menang!";
                              } else if (skorPemain1 < skorPemain2) {
                                pesanMenang = "Pemain 2 yang menang!";
                              } else {
                                pesanMenang = "Seri!";
                              }
                              print(pesanMenang);

                              counter = 0;
                              skorPemain1 = 0;
                              skorPemain2 = 0;
                              recordPemain1 = [];
                              recordPemain2 = [];
                            }

                            setState(() {});
                          },
                    child: Text('Lempar Dadu'))
              ],
            ),
            SizedBox(
              height: spacingAntarRow,
            ),
            Row(
              children: [
                Expanded(child: Text('Ganti Pemain')),
                ElevatedButton(
                    onPressed: () {
                      isSudahWayah = false;
                      if (pemain == 1) {
                        pemain = 2;
                      } else {
                        pemain = 1;
                      }
                      counter++;
                      print(counter);
                      setState(() {});
                    },
                    child: Text('Ganti Pemain'))
              ],
            ),
            SizedBox(
              height: spacingAntarRow + 20,
            ),
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.yellow,
                child: Text(
                  hasilLempar.toString(),
                  style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: spacingAntarRow + 10,
            ),
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Skor Pemain 1 : ",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Text("$recordPemain1"),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Skor Pemain 2: ",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w700)),
                              Text(" $recordPemain2"),
                            ],
                          )
                        ],
                      )));
                    },
                    child: Text('Poin')),
              ],
            ),
            SizedBox(
              height: spacingAntarRow,
            ),
            Text("Pemain 1: $skorPemain1"),
            SizedBox(
              height: spacingAntarRow,
            ),
            Text("Pemain 2: $skorPemain2"),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 20,
                )),
                Text('Ronde: ${counter ~/ 2 + 1}')
              ],
            )
          ],
        ),
      ),
    );
  }
}
