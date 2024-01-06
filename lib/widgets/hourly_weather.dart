import 'package:flutter/material.dart';

// ignore: camel_case_types
class HourlyWeather extends StatelessWidget {
  const HourlyWeather({
    super.key,
    required this.time,
    required this.degree,
  });

  final String time;
  final String degree;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       width: 70,
        height: 70,
        
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
                
                Flexible(
                  child: Text(
                    time,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 195, 217, 255),
                      fontSize: 20,
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            
          
        ));
  }
}
