import 'package:flutter/material.dart';
import 'package:weather_app/models/example/MiCard/widgets/details_row.dart';

class MiCardPageExample extends StatelessWidget {
  const MiCardPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage("assets/example/images/mainImage.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: DetailsRow(
                  text: "Radwan.Albahrani@icloud.com",
                  icon: Icon(Icons.email),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: DetailsRow(
                  text: "Radwan Albahrani",
                  icon: Icon(Icons.person),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
