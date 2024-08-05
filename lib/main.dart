import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/get_weather_cubit/get_weather_cubit.dart';
import 'cubits/get_weather_cubit/get_weather_states.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Weather App',
              theme: ThemeData(
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCubit>(context)
                      .weatherModel
                      ?.weatherCondition,
                ),
              ),
              home: const HomeScreen(),
            );
          },
        );
      }),
    );
  }

  MaterialColor getThemeColor(String? condition) {
    if (condition == null) {
      return Colors.blue;
    }
    switch (condition) {
      case "Sunny":
      case "clear":
      case "Partly cloudy":
      case "Cloudy":
      case "Overcast":
        return Colors.blueGrey;
      case "Mist":
      case "Fog":
      case "Freezing fog":
        return Colors.blueGrey;
      case "Patchy rain possible":
      case "Patchy light rain":
      case "Light rain ":
      case "Moderate rain at times":
      case "Moderate rain":
      case "Heavy rain at times":
      case "Heavy rain":
      case "Light rain shower":
      case "Moderate or Heavy rain shower":
      case "Torrential rain shower":
        return Colors.lightBlue;
      case "Patchy snow possible":
      case "Patchy light snow":
      case "Light snow":
      case "Patchy moderate snow":
      case "Moderate snow":
      case "Heavy snow":
      case "Light snow showers":
      case "Moderate or heavy snow showers":
        return Colors.lightBlue;
      default:
        return Colors.grey;
    }
  }
}

/// create states
/// create cubit
/// create function
/// provide cubit
/// integrate cubit
/// trigger cubit
