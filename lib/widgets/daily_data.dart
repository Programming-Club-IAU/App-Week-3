import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/widgets/containers.dart';

/*
  Widget dailyWeather() {
    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: text.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 60,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(text[index]),
              )
            ],
          );
        },
      ),
    );
  }
}*/
class DailyData extends StatelessWidget {
  const DailyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        head(),
        dailyWeather(),
      ],
    );
  }

  Widget head() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Week Forcast",
          style: GoogleFonts.exo2(fontSize: 18),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/example/images/icons8-winter-61.png",
            scale: 1.5,
          ),
        )
      ],
    );
  }

  Widget dailyWeather() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ContainerBox6(
              day: "Sun",
              image: Image.asset("assets/example/images/icons8-cloud-50.png"),
              temp: "6°"),
          ContainerBox6(
              day: "Mon",
              image: Image.asset(
                  "assets/example/images/icons8-windy-weather-50.png"),
              temp: "3°"),
          ContainerBox6(
              day: "Tue",
              image: Image.asset(
                  "assets/example/images/icons8-windy-weather-50.png"),
              temp: "3°"),
          ContainerBox6(
              day: "Wed",
              image:
                  Image.asset("assets/example/images/icons8-sleet-50 (1).png"),
              temp: "-1°"),
          ContainerBox6(
              day: "Fri",
              image:
                  Image.asset("assets/example/images/icons8-snow-50 (1).png"),
              temp: "-8°"),
        ],
      ),
    );
  }
}
