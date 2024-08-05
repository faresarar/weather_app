import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/weather_model.dart';
import '../../services/weather_service.dart';
import 'get_weather_states.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState);
  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService().getCurrentWeather(cityName: cityName);
      log(weatherModel.cityName);
    } catch (error) {
      emit(WeatherLoadedState());
    }
  }
}
