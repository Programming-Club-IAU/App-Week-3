import 'package:flutter/material.dart';

class WeatherInput extends StatelessWidget {
  final TextEditingController controller;

  const WeatherInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'Enter location',
        border: OutlineInputBorder(),
      ),
    );
  }
}
