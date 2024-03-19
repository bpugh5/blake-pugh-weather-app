import 'package:cs492_weather_app/components/utility/icon_map.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:cs492_weather_app/models/weather_forecast.dart';

class HourlyForecastList extends StatefulWidget {
  const HourlyForecastList(
      {super.key,
      required this.forecasts,
      required this.updateActiveWeather,
      required this.getDailyIndex,
      required this.setSelectedIndex,
      required this.getHourlyIndex});
  final List<WeatherForecast> forecasts;
  final Function updateActiveWeather;
  final Function getDailyIndex;
  final Function setSelectedIndex;
  final Function getHourlyIndex;

  @override
  State<HourlyForecastList> createState() => _HourlyForecastListState();
}

class _HourlyForecastListState extends State<HourlyForecastList> {
  void updateActiveForecast(int index) {
    widget.setSelectedIndex(index, true);
    widget.updateActiveWeather(widget.forecasts.elementAt(index));
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 25,
            itemBuilder: (BuildContext context, int index) {
              DateTime forecastTime =
                  DateTime.parse(widget.forecasts[index].startTime).toLocal();
              bool showNowText = index == 0;
              return GestureDetector(
                onTap: () => updateActiveForecast(index),
                child: Container(
                  decoration: BoxDecoration(
                      color: (widget.getHourlyIndex() == index)
                          ? Theme.of(context).colorScheme.onTertiary
                          : colorScheme.surface),
                  child: SizedBox(
                    width: 100,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            showNowText
                                ? "Now"
                                : DateFormat("h a").format(forecastTime),
                            style: TextStyle(
                                color: (widget.getHourlyIndex() == index)
                                    ? colorScheme.primary
                                    : colorScheme.onPrimary)),
                        iconsMap(widget.forecasts[index].shortForecast,
                            widget.forecasts[index].isDaytime),
                        Text("${widget.forecasts[index].temperature}º",
                            style: TextStyle(
                                color: (widget.getHourlyIndex() == index)
                                    ? colorScheme.primary
                                    : colorScheme.onPrimary)),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
