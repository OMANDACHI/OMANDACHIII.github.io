import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  final String apiKey = '229ff157f9b90eb273aca2f89b9d8bfa'; // Ganti dengan API KEY Anda
  final String apiUrl =
      'https://api.openweathermap.org/data/2.5/weather?q=Jakarta,id&appid=';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/cloud.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 16),
            Text(
              'Jakarta',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Temperature: 28°C',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Cloudy',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
