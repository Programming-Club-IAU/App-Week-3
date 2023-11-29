import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/screens/login_page.dart';

void main() {
  runApp(MyApp(
    initialRoute: LoginPage.route,
    routes: {
      LoginPage.route: (context) => const LoginPage(),
      HomeScreen.route: (context) => const HomeScreen(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required initialRoute, required routes});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      initialRoute: LoginPage.route,
      routes: {
        LoginPage.route: (context) => const LoginPage(),
        HomeScreen.route: (context) => const HomeScreen(),
      },
      home: const LoginPage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
