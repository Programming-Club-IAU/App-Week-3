import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/controller/global_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
  Widget build(BuildContext context) {
    return Container(
      child: const DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/example/images/snow.png"))),
      ),
    );
  }
}

class _HeaderWidgetState extends State<HeaderWidget> {
  String city = "";
  String date = DateFormat('EEE, MMM d').format(DateTime.now());

  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  void initState() {
    getAddress(globalController.getLattitude().value,
        globalController.getLongitude().value);
    super.initState();
  }

  getAddress(lat, lon) async {
    List<Placemark> placemark = await placemarkFromCoordinates(lat, lon);
    Placemark place = placemark[0];
    setState(() {
      city = place.locality!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.topCenter,
        child: Text(
          city,
          style:
              GoogleFonts.exo2(height: 2, color: Colors.black87, fontSize: 30),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 22, right: 20, bottom: 20),
        alignment: Alignment.topCenter,
        child: Text(
          date,
          style: GoogleFonts.exo2(
            fontSize: 18,
            height: 1.5,
            color: Colors.grey[700],
          ),
        ),
      ),
    ]);
  }
}
