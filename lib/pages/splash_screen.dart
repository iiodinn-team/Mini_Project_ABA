import 'package:flutter/material.dart';

import '../screens/homePage/home.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "splashScreen",
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }

}

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    // Navigate to ProfileScreen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF002E44), // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'ABA', // First part of the text
                    style: TextStyle(
                      fontSize: 28, // Example font size
                      fontWeight: FontWeight.bold, // Example font weight
                      color: Colors.white, // Example text color
                    ),
                  ),
                  TextSpan(
                    text: '\' ', // First part of the text
                    style: TextStyle(
                      fontSize: 28, // Example font size
                      fontWeight: FontWeight.bold, // Example font weight
                      color: Colors.red, // Example text color
                    ),
                  ),
                  TextSpan(
                    text: 'Mobile', // Second part of the text with different style
                    style: TextStyle(
                      fontSize: 28, // Custom font size
                      fontWeight: FontWeight.bold, // Custom font weight
                      color: Colors.white, // Custom text color
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}