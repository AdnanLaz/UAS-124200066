import 'package:flutter/material.dart';
import 'package:uas_mobile_124200066/halama_utama.dart';
import 'package:uas_mobile_124200066/saran.dart';
import 'nav_bottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Untuk memanggil nama class pada directory lain, import terlebih dahulu class tersebut diatas
    // Setelah diimport, panggil nama class tersebut
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigasi(),
    );
  }
}