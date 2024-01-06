import 'package:flutter/material.dart';

// ignore: camel_case_types
class DailyWeather extends StatelessWidget {
  const DailyWeather({
    super.key,
    required this.day,
    required this.high,
    required this.low,
  });

  final String day;
  final String high;
  final String low;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Text(
                    day,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Text(
                    low,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 195, 217, 255),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Text(
                    high,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 195, 217, 255),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
