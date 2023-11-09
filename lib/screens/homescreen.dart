import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_pred_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      appBar: _appBar(),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            weatherStatus(),
            const SizedBox(height: 30),
            const Divider(
              color: Colors.white,
              thickness: 0.1,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 10),
            weatherUpdates(),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.white,
              thickness: 0.1,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 20),
            _weatherDays(),
          ],
        ),
      ),
    );
  }

  Expanded _weatherDays() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Add this line
        children: <Widget>[
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Aligns the column to the start
            children: List.generate(weatherPredList.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  weatherPredList[index].dayName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              );
            }),
          ),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Aligns the column to the center
            children: List.generate(weatherPredList.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  weatherPredList[index].icon,
                  color: Colors.white,
                ),
              );
            }),
          ),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.end, // Aligns the column to the end
            children: List.generate(weatherPredList.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  weatherPredList[index].temperature,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Row weatherUpdates() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              '9 AM',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.wb_cloudy_outlined,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              '11°',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '12 PM',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.wb_sunny_outlined,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              '20°',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '3 PM',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.wb_sunny_outlined,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              '12°',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '6 PM',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.wb_cloudy_outlined,
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              '10°',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column weatherStatus() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Ad Dammam',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Today',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          '10°',
          style: TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rainy',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.wb_cloudy_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      title: const Text('Weather App'),
      // i want to remove the shadow and make it seemless with the background
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
