import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/models/weather_model.dart';
class WeatherService{
  String baseurl='http://api.weatherapi.com/v1';
  String apikey='e201917fe7404ca5a52114911230301';

 Future<WeatherModel>  getWeather({required String cityName})async{
    Uri url=Uri.parse('$baseurl/forecast.json?key=$apikey&q=$cityName&days=7');
    http.Response response= await http.get(url);
    Map<String,dynamic> data=jsonDecode(response.body);
    WeatherModel weather=WeatherModel.fromJson(data);
    return weather;



  }}
