import 'package:flutter/material.dart';

class SnowFlakes extends StatelessWidget {
  const SnowFlakes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset("assets/example/images/snow.png",
              fit: BoxFit.contain),
        ),
      ],
    );
  }
}
