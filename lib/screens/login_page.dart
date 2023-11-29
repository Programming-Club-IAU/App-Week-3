//not complete

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/screens/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const String route = "/LoginPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Weather App",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 15, 99, 159),
        ),
        body: SafeArea(
          child: Center(
              child: Column(children: <Widget>[
            const SizedBox(height: 60),
            const Image(
                image: AssetImage(
                    "assets/example/images/icons8-winter-64 (1).png")),
            Text("Do You Wanna Build A Snow Man?",
                style: GoogleFonts.exo2(
                  fontSize: 20,
                  color: Colors.black87,
                )),
            const SizedBox(height: 40),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 198, 205, 205),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email / Phone number'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 198, 205, 205),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Password'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(HomeScreen.route);
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.exo2(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot Password?",
                  style: GoogleFonts.exo2(
                      color: const Color.fromARGB(255, 20, 165, 217),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 80),
                const Image(
                    image: AssetImage(
                        "assets/example/images/icons8-snowflake-48.png")),
              ],
            )
          ])),
        ));
  }

  void navigateNextPage(BuildContext context) {}
}
