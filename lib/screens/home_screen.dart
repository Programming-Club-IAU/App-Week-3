import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/global_controller.dart';
import 'package:weather_app/widgets/current_weather.dart';
import 'package:weather_app/widgets/daily_weather.dart';
import 'package:weather_app/widgets/header.dart';
import 'package:weather_app/widgets/hourly_weather.dart';
import 'package:weather_app/widgets/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String route = "/HomeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const HomeScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 226, 238, 238),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 198, 205, 205),
              Color.fromARGB(255, 225, 255, 251),
              Color.fromARGB(255, 245, 255, 254),
            ],
          ),
        ),
        child: SafeArea(
            child: Obx(() => globalController.checkLoading().isTrue
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      SizedBox(
                        height: 20,
                      ),
                      Header(),
                      CurrentWeather(),
                      Style(),
                      HourlyData(),
                      DailyWeather(),
                    ],
                  ))),
      ),
    );
  }
}
