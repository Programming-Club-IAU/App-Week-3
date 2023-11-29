import 'package:flutter/material.dart';

class WeatherImage extends StatelessWidget {
  const WeatherImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Image.asset(
        'lib/assets/images/weather-icon.webp',
        width: 200,
        height: 200,
      ),
    );
  }
}