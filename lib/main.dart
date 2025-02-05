import 'package:adidas/home_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // นำเข้าไฟล์ HomePage

void main() {
  runApp(AdidasApp());
}

class AdidasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adidas Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: HomePage(), // เรียกใช้หน้าหลัก
    );
  }
}
