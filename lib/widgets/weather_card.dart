import 'package:flutter/material.dart';

// ignore: camel_case_types
class WeatherCard extends StatelessWidget {
  const WeatherCard({
    super.key,
    required this.city,
    required this.image,
    required this.conditions,
    required this.degree,
  });

  final String city;
  final Image image;
  final String conditions;
  final String degree;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        height: 300,
        
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    city,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                
                Flexible(
                  child: Text(
                    degree,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    conditions,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            )
          ,
        );
  }
}
