class WeatherModel {
  final String cityName;
  final DateTime date;
  final String? image;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String weatherCondition;

  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.temp,
      required this.minTemp,
      required this.maxTemp,
      required this.weatherCondition});
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        cityName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        temp: json['forecast'],
        minTemp: json['forecast']['forecastday'][0]['day']['minTemp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']['text'],
        image: json['forecast']['forecastday'][0]['day']['condition']['icon']);
  }
}
