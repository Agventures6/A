import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/weather.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);

    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.teal.shade100,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.teal.shade600, width: 2.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Weather Details',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text('Location: ${weatherProvider.location}'),
            Text('Temperature: ${weatherProvider.temperature}'),
            Text('Humidity: ${weatherProvider.humidity}'),
            Text('Wind Speed: ${weatherProvider.windSpeed}'),
          ],
        ),
      ),
    );
  }
}
