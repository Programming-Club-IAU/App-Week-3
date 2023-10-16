import 'package:flutter/material.dart';
import 'package:weather_app/screens/weather_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'weather app',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 150, 205, 250),
          title: const Text('Weather App')
        ),
        body: const WeatherApp(),
      ),
    );
  }
}
