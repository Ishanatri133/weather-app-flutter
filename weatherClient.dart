
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/model.dart';


import 'package:dio/dio.dart';

class WeatherClient{
  Dio dio = Dio();
  getWeatherDataFromAPI() async{
    String WeatherURL= "https://api.openweathermap.org/data/2.5/weather?lat=28.42&lon=77.12&appid=b5353a7c0d55517a14d818a4881a0b49";
    try{
      var response = await dio.get(WeatherURL);
      print(" response: ${response.data}");
      return response.data;
    }catch(error){
      print("error in fetching data");
    }
  }
}
