import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/pages/homepage.dart';
import 'package:weatherapp/providers/weatherprovider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) {
        return WeatherProvider();
      },
      child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       primarySwatch: Provider.of<WeatherProvider>(context).weatherData == null ?  Colors.blue : Provider.of<WeatherProvider>(context).weatherData!.getThemeColor()  ,
      ),
      home: HomePage(),
    );
  }
}
