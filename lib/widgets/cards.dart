import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerBox extends StatelessWidget {
  final String text;

  const ContainerBox({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 80),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 245, 253, 252),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 174, 185, 185),
                offset: Offset(1, 2),
                blurRadius: 15,
                blurStyle: BlurStyle.outer),
          ]),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(text,
                style: GoogleFonts.exo2(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ],
      ),
    );
  }
}

class CurrentWeatherIconCard extends StatelessWidget {
  final Image image;

  const CurrentWeatherIconCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 245, 253, 252),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 174, 185, 185),
                offset: Offset(1, 2),
                blurRadius: 15,
                blurStyle: BlurStyle.outer),
          ]),
      child: Column(
        children: [image],
      ),
    );
  }
}

class CurrentWeathrtDataCard extends StatelessWidget {
  final String text;

  const CurrentWeathrtDataCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 20,
      width: 60,
      alignment: Alignment.center,
      child: Text(
        text,
        style: GoogleFonts.exo2(
            fontSize: 12, fontWeight: FontWeight.w700, color: Colors.grey[700]),
      ),
    );
  }
}

class HourlyWeatherCard extends StatelessWidget {
  final String time;
  final Image image;
  final String temp;
  const HourlyWeatherCard({
    super.key,
    required this.time,
    required this.image,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 100,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 245, 253, 252),
          boxShadow: const [
            BoxShadow(
              offset: Offset(1, -8),
              blurRadius: 10,
              spreadRadius: 1,
              color: Color.fromARGB(255, 174, 185, 185),
            )
          ],
        ),
        child: Column(children: [
          Text(
            time,
            style: GoogleFonts.exo2(),
          ),
          image,
          Text(
            temp,
            style: GoogleFonts.exo2(),
          ),
        ]),
      ),
    );
  }
}

class DailyWeatherCard extends StatelessWidget {
  final String day;
  final Image image;
  final String temp;
  const DailyWeatherCard({
    super.key,
    required this.day,
    required this.image,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 245, 253, 252),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 174, 185, 185),
                offset: Offset(1, 2),
                blurRadius: 15,
                blurStyle: BlurStyle.outer),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(day, style: GoogleFonts.exo2()),
          image,
          Text(temp, style: GoogleFonts.exo2()),
        ],
      ),
    );
  }
}
