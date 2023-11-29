import 'package:flutter/material.dart';
import 'package:weather_app/widgets/details_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  get assets => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 59, 213, 252),
            Color.fromARGB(255, 2, 4, 117),
          ],
        )),
        child: const Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Text(
                  "Khobar, Saudi Arabia",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                Image(
                  image: AssetImage("assets/images/121843-200.png"),
                  width: 40,
                  color: Colors.white,
                )
              ]),
              DetailsRow(
                image: Image(
                    image: AssetImage("assets/images/sun_4814489.png"),
                    width: 145),
                condetions: 'Partly cloudy',
                dgree: '25°c',
              ),
              DetailsRow(
                image: Image(
                    image: AssetImage("assets/images/wind_4161247.png"),
                    width: 145),
                condetions: 'Night wind',
                dgree: '16°c',
              ),
            ])),
      ),
    ));
  }
}
