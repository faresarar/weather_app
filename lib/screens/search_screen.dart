import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search City "),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: SizedBox(
            height: 200,
            child: TextField(
              onSubmitted: (cityName) async {
                var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
                getWeatherCubit.getWeather(cityName: cityName);
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 16,
                ),
                hintText: "Entre city name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.green,
                  ),
                ),
                hintStyle: const TextStyle(),
                suffixIcon: const Icon(Icons.search),
                labelText: "Search",

                ///icon: const Icon(Icons.telegram) /// to put icon before TextField
                ///enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.green),),
                ///focusedBorder: const OutlineInputBorder(),
                ///enabled: false ,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
