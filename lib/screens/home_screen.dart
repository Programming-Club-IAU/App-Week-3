import 'package:flutter/material.dart';
import 'package:weather_app/widgets/daily_weather.dart';
import 'package:weather_app/widgets/hourly_weather.dart';
import 'package:weather_app/widgets/weather_card.dart';
import 'package:weather_app/widgets/indicators.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

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
                WeatherCard(
                  city: 'Khobar',
                  image: Image(
                      image: AssetImage("assets/images/sun_4814489.png"),
                      width: 190),
                  conditions: 'Partly cloudy',
                  degree: '25°c',
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  IndicatorCard(
                    image: Image(
                        image: AssetImage("assets/images/image-removebg-preview (1).png")),
                    indicator: 'Wind',
                    level: '15 km/h',
                  ),
                  IndicatorCard(
                    image: Image(
                        image: AssetImage("assets/images/image-removebg-preview.png")),
                    indicator: 'Humidity',
                    level: '34 %',
                  ),
                  IndicatorCard(
                    image: Image(
                        image: AssetImage("assets/images/image-removebg-preview (2).png")),
                    indicator: 'Rain',
                    level: '56 %',
                  ),
                  
                ]),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HourlyWeather(time: 'Now', degree: '25°c'),
                    HourlyWeather(time: '5PM', degree: '24°c'),
                    HourlyWeather(time: '6PM', degree: '24°c'),
                    HourlyWeather(time: '7PM', degree: '23°c'),
                    HourlyWeather(time: '8PM', degree: '22°c'),
                    HourlyWeather(time: '9PM', degree: '22°c'),
                    ],
                ),
                SizedBox(height: 30,),
                DailyWeather( 
                day: 'Mon',
                 high: '25°c', 
                 low: '20°c'),
                 DailyWeather( 
                day: 'Tue',
                 high: '23°c', 
                 low: '20°c'),
                 DailyWeather( 
                day: 'Wed',
                 high: '24°c', 
                 low: '21°c'),
                 DailyWeather( 
                day: 'Thu',
                 high: '25°c', 
                 low: '23°c'),
                 DailyWeather( 
                day: 'Fri',
                 high: '26°c', 
                 low: '19°c'),
                SizedBox(height: 20,),
              ],
            ))),
      ),
    );
  }
}
