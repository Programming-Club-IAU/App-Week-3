import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({
    super.key,
    required this.image,
    required this.condetions,
    required this.dgree,
  });

  final Image image;
  final String condetions;
  final String dgree;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [image],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Text(
                    condetions,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    dgree,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(),
              ],
            )
          ],
        ));
  }
}
