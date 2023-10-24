import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/widgets/cards.dart';

class HourlyData extends StatelessWidget {
  const HourlyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          alignment: Alignment.topCenter,
          child: Text("Today", style: GoogleFonts.exo2(fontSize: 18)),
        ),
        hourlyList(),
      ],
    );
  }

  Widget hourlyList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          HourlyWeatherCard(
              time: "11:30 PM",
              image: Image.asset("assets/example/images/icons8-cloud-50.png"),
              temp: "6°"),
          HourlyWeatherCard(
              time: "12:00 AM",
              image: Image.asset(
                  "assets/example/images/icons8-windy-weather-50.png"),
              temp: "3°"),
          HourlyWeatherCard(
              time: "12:30 AM",
              image: Image.asset(
                  "assets/example/images/icons8-windy-weather-50.png"),
              temp: "3°"),
          HourlyWeatherCard(
              time: "1:00 PM",
              image:
                  Image.asset("assets/example/images/icons8-sleet-50 (1).png"),
              temp: "-1°"),
          HourlyWeatherCard(
              time: "1:30 PM",
              image:
                  Image.asset("assets/example/images/icons8-snow-50 (1).png"),
              temp: "-8°"),
          HourlyWeatherCard(
              time: "2:00 PM",
              image:
                  Image.asset("assets/example/images/icons8-snow-50 (1).png"),
              temp: "-12°"),
        ],
      ),
    );
  }
}
