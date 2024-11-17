import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/weather.dart';

class WeatherBox extends StatefulWidget {
  const WeatherBox({super.key});

  @override
  _WeatherBoxState createState() => _WeatherBoxState();
}

class _WeatherBoxState extends State<WeatherBox> {
  String? errorMessage; // Holds error messages if location services are off

  @override
  void initState() {
    super.initState();
    _fetchWeatherData();
  }

  Future<void> _fetchWeatherData() async {
    final weatherProvider =
        Provider.of<WeatherProvider>(context, listen: false);

    try {
      await weatherProvider.fetchWeatherData();
      setState(() {
        errorMessage = null; // Clear any previous error message
      });
    } catch (e) {
      setState(() {
        errorMessage = e.toString(); // Set the error message
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.teal.shade100,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.teal.shade600, width: 2.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Weather Details',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),

          // Display location and weather details or error message
          if (errorMessage != null)
            const Text(
              "Location is turned off",
              style: TextStyle(
                color: Colors.red,
                fontSize: 14.0,
              ),
            )
          else
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Location: ${weatherProvider.location}'),
                        Text('Humidity: ${weatherProvider.humidity}'),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Temperature: ${weatherProvider.temperature}'),
                        Text('Wind Speed: ${weatherProvider.windSpeed}'),
                      ],
                    ),
                  ],
                ),
              ],
            ),

          /*const SizedBox(height: 20.0),

          // Refresh button
          ElevatedButton(
            onPressed: () {
              _fetchWeatherData();
            },
            child: const Text("Refresh"),
          ),*/
        ],
      ),
    );
  }
}
