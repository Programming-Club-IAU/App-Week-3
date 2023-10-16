import 'package:flutter/material.dart';

class WeatherButton extends StatelessWidget {
  final VoidCallback onPressed;

  const WeatherButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Text('Get The Weather'),
      ),
    );
  }
}