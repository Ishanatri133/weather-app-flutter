class WeatherModel {
  late List<Weather> weather;
  late Temp maintemp;
  late int visibility;

  WeatherModel({
    required this.weather,
    required this.maintemp,
    required this.visibility,
  });

  factory WeatherModel.extractWeatherModelFromJSON(Map<String, dynamic> map) {
    return WeatherModel(
      weather: (map['weather'] as List<dynamic>)
          .map((dynamic item) => Weather.extractWeatherFromJSON(item))
          .toList(),
      maintemp: Temp.extractTempFromJSON(map['main']),
      visibility: map['visibility'],
    );
  }
}

class Weather {
  late int id;
  late String main;
  late String desc;
  late String icon;

  Weather({
    required this.id,
    required this.main,
    required this.desc,
    required this.icon,
  });

  factory Weather.extractWeatherFromJSON(Map<String, dynamic> map) {
    return Weather(
      id: map['id'],
      main: map['main'],
      desc: map['description'],
      icon: map['icon'],
    );
  }
}

class Temp {
  late double temp;
  late double feels_like;
  late double temp_min;
  late double temp_max;
  late int pressure;
  late int humidity;

  Temp({
    required this.temp,
    required this.feels_like,
    required this.pressure,
    required this.humidity,
    required this.temp_max,
    required this.temp_min,
  });

  factory Temp.extractTempFromJSON(Map<String, dynamic> map) {
    return Temp(
      temp: map['temp'],
      feels_like: map['feels_like'],
      temp_min: map['temp_min'],
      temp_max: map['temp_max'],
      pressure: map['pressure'],
      humidity: map['humidity'],
    );
  }
}
