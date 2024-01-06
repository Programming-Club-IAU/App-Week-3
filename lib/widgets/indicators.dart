import 'package:flutter/material.dart';

// ignore: camel_case_types
class IndicatorCard extends StatelessWidget {
  const IndicatorCard({
    super.key,
    required this.image,
    required this.indicator,
    required this.level,
  });

  final Image image;
  final String indicator;
  final String level;

  @override
  Widget build(BuildContext context) {
    return Container(
       width: 120,
        height: 120,
        
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
                Flexible(child: image),
                Flexible(
                  child: Text(
                    level,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    indicator,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 195, 217, 255),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            
          
        ));
  }
}
