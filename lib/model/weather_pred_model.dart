import 'package:flutter/material.dart';

class WeatherPredModel {
  final String dayName;
  final String temperature;
  final IconData icon;

  const WeatherPredModel({
    required this.dayName,
    required this.temperature,
    required this.icon,
  });
}

List<WeatherPredModel> weatherPredList = [
  const WeatherPredModel(
    dayName: 'Monday',
    temperature: '10°',
    icon: Icons.wb_cloudy_outlined,
  ),
  const WeatherPredModel(
    dayName: 'Tuesday',
    temperature: '12°',
    icon: Icons.wb_cloudy_outlined,
  ),
  const WeatherPredModel(
    dayName: 'Wednesday',
    temperature: '14°',
    icon: Icons.wb_cloudy_outlined,
  ),
  const WeatherPredModel(
    dayName: 'Thursday',
    temperature: '16°',
    icon: Icons.wb_sunny_outlined,
  ),
  const WeatherPredModel(
    dayName: 'Friday',
    temperature: '18°',
    icon: Icons.wb_sunny_outlined,
  ),
  const WeatherPredModel(
    dayName: 'Saturday',
    temperature: '20°',
    icon: Icons.wb_sunny_outlined,
  ),
  const WeatherPredModel(
    dayName: 'Sunday',
    temperature: '22°',
    icon: Icons.wb_sunny_outlined,
  ),
];
