import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../services/weather.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("AGventure"),
        backgroundColor: Colors.green,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/logo.png"),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: weatherProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : weatherProvider.errorMessage != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Please turn on the Location on your device",
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: weatherProvider.fetchWeatherData,
                        child: const Text("Retry"),
                      ),
                    ],
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildCurrentWeatherCard(weatherProvider),
                      _buildSectionTitle("Next 48 Hours"),
                      _buildHourlyForecast(weatherProvider),
                      _buildSectionTitle("Next 7 Days"),
                      _buildDailyForecast(weatherProvider),
                    ],
                  ),
                ),
    );
  }

  Widget _buildCurrentWeatherCard(WeatherProvider weatherProvider) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.teal.shade50,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.teal),
        ),
        child: Column(
          children: [
            Text(
              weatherProvider.city,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              weatherProvider.currentWeather!["weather"][0]["description"],
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "${weatherProvider.currentWeather!["main"]["temp"]}°C",
              style: const TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHourlyForecast(WeatherProvider weatherProvider) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: weatherProvider.hourlyForecast?.length ?? 0,
          itemBuilder: (context, index) {
            final forecast = weatherProvider.hourlyForecast![index];
            return Container(
              width: 80,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.teal),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    forecast["dt_txt"].split(" ")[1],
                    style: const TextStyle(fontSize: 14.0),
                  ),
                  const SizedBox(height: 8),
                  const Icon(Icons.cloud, color: Colors.teal),
                  const SizedBox(height: 8),
                  Text(
                    "${forecast["main"]["temp"]}°C",
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDailyForecast(WeatherProvider weatherProvider) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: weatherProvider.dailyForecast?.length ?? 0,
        itemBuilder: (context, index) {
          final forecast = weatherProvider.dailyForecast![index];
          final forecastDate = DateTime.parse(forecast["dt_txt"]);
          final dayOfWeek = DateFormat('EEE').format(forecastDate);

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              height: 60,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.teal),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(dayOfWeek),
                  Text("${forecast["main"]["temp"]}°C"),
                  Text("${forecast["wind"]["speed"]} km/h"),
                  Text("${forecast["main"]["humidity"]}%"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
