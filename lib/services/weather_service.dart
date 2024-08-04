import 'package:dio/dio.dart';

import '../models/weather_model.dart';

class WeatherService {
  final Dio dio = Dio();
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "6c0dd5142d874b0fba9165236240408";
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7");
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
  Future<WeatherModel> getForcast({required String cityName}) async {
    Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7");
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }

}
