import 'package:flutter/material.dart';

import '../widgets/no_weather_body.dart';
import '../widgets/weather_info_body.dart';
import 'search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body:  weatherModel == null ? const NoWeatherBody() : const WeatherInfoBody(),
    );
  }
}
