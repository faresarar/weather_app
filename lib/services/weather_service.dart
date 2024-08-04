import 'package:dio/dio.dart';

import '../models/weather_model.dart';

class WeatherService {
  final Dio dio = Dio();
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
        "http://api.weatherapi.com/v1/forecast.json?key=6c0dd5142d874b0fba9165236240408&q=$cityName&days=7");
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
