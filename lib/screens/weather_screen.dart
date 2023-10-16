import 'package:flutter/material.dart';
import 'package:weather_app/widgets/weather_image.dart';
import 'package:weather_app/widgets/weather_input.dart';
import 'package:weather_app/widgets/weather_button.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {

  final _textController = TextEditingController();
  String userPost = '';
  String temp = '';

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        const Padding(
        padding: EdgeInsets.all(5.0),
        child: WeatherImage(),
        ),

        const SizedBox(height: 5),

        Padding(
        padding: const EdgeInsets.all(8.0),
        child: WeatherInput(controller: _textController,),
        ),

        const SizedBox(height: 10),

        Container(
          alignment: Alignment.centerLeft,
          child: WeatherButton(onPressed: () {
            setState(() {
              userPost = _textController.text;
              temp = "27 C";
            });
          },
        ),
        ),
        
        Container(
          color: const Color.fromARGB(255, 178, 209, 221),
          child: Center(
            child: Column(
              children: [
                Text(
                  userPost,
                  style: const TextStyle(fontSize: 35),
                ),
                const Icon(
                  Icons.cloud_circle_outlined,
                  size: 30,
                ),
                Text(temp,style: const TextStyle(fontSize: 25),),
              ],
            ),
          ),
        )
      ],
    );
  }
}
