import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:cs492_weather_app/models/weather_forecast.dart';

class DailyForecastList extends StatefulWidget {
  const DailyForecastList({super.key, required this.forecasts});
  final List<WeatherForecast> forecasts;

  @override
  State<DailyForecastList> createState() => _DailyForecastListState();
}

class _DailyForecastListState extends State<DailyForecastList> {
  final int activeForecast = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 300,
      child: ListView.builder(
          itemCount: widget.forecasts.length,
          itemBuilder: (BuildContext context, int index) {
            DateTime forecastTime =
                DateTime.parse(widget.forecasts[index].startTime).toLocal();
            return Card(
              child: SizedBox(
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${widget.forecasts[index].temperature}"),
                    const Icon(Icons.sunny),
                    Text(DateFormat("h a").format(forecastTime)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
