import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class WeatherProvider with ChangeNotifier {
  String location = 'Fetching...';
  String temperature = 'Fetching...';
  String humidity = 'Fetching...';
  String windSpeed = 'Fetching...';

  WeatherProvider() {
    _fetchWeather();
  }

  Future<void> _fetchWeather() async {
    try {
      Position position = await _determinePosition();
      String apiKey = 'c4fc59b55f8b8620ed146312d8978783';
      String url =
          'https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&units=metric&appid=$apiKey';
      http.Response response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        location = data['name'];
        temperature = '${data['main']['temp']}°C';
        humidity = '${data['main']['humidity']}%';
        windSpeed = '${data['wind']['speed']} km/hr';
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      location = 'Error';
      temperature = 'Error';
      humidity = 'Error';
      windSpeed = 'Error';
      print(e);
    }
    notifyListeners();
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }
}
