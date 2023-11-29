import 'screens/home_screen.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Weather App',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
