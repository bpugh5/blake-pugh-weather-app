import 'package:cs492_weather_app/components/utility/icon_map.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:cs492_weather_app/models/weather_forecast.dart';

class DailyForecastList extends StatefulWidget {
  const DailyForecastList(
      {super.key,
      required this.forecasts,
      required this.updateActiveWeather,
      required this.getHourlyIndex,
      required this.setSelectedIndex,
      required this.getDailyIndex});
  final List<WeatherForecast> forecasts;
  final Function updateActiveWeather;
  final Function getHourlyIndex;
  final Function setSelectedIndex;
  final Function getDailyIndex;

  @override
  State<DailyForecastList> createState() => _DailyForecastListState();
}

class _DailyForecastListState extends State<DailyForecastList> {
  void updateActiveForecast(int index) {
    widget.setSelectedIndex(index, false);
    widget.updateActiveWeather(widget.forecasts.elementAt(index));
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
        itemCount: widget.forecasts.length,
        itemBuilder: (BuildContext context, int index) {
          DateTime forecastTime =
              DateTime.parse(widget.forecasts[index].startTime).toLocal();
          return Card(
            child: GestureDetector(
              onTap: () => updateActiveForecast(index),
              child: Container(
                decoration: BoxDecoration(
                    color: (widget.getDailyIndex() == index)
                        ? Theme.of(context).colorScheme.onTertiary
                        : colorScheme.surface),
                width: 100,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${widget.forecasts[index].temperature}º",
                        style: TextStyle(
                            color: (widget.getDailyIndex() == index)
                                ? colorScheme.primary
                                : colorScheme.onPrimary)),
                    iconsMap(widget.forecasts[index].shortForecast,
                        widget.forecasts[index].isDaytime),
                    Text(DateFormat("E, h a").format(forecastTime),
                        style: TextStyle(
                            color: (widget.getDailyIndex() == index)
                                ? colorScheme.primary
                                : colorScheme.onPrimary)),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
