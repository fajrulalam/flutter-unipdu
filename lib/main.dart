import 'package:flutter/material.dart';
import 'package:flutter_pertemuan4/Screens/Absensi.dart';
import 'package:flutter_pertemuan4/Screens/GameLemparDadu.dart';
import 'package:flutter_pertemuan4/Screens/Setting.dart';
import 'dart:math';

import 'Screens/Account.dart';
import 'Screens/Beranda.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Beranda(),
      routes: {
        "Game Lempar Dadu": (context) => GameLemparDadu(),
        "Absensi": (context) => Absensi(),
        "Account": (context) => Account(),
        "Setting": (context) => Setting(),
        "Beranda": (context) => Beranda()
      },
    );
  }
}
