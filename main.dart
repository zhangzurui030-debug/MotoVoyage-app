import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MotoApp());
}

class MotoApp extends StatelessWidget {
  const MotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moto Travel',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}