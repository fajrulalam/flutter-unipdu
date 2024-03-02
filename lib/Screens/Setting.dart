import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Text("Ini adalah body dari stateful widget Setting"),
            Text("Ini adalah body dari stateful widget Setting"),
            Text("Ini adalah body dari stateful widget Setting")
          ],
        ),
      ),
    );
  }
}
