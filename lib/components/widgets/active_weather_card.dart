import 'package:cs492_weather_app/components/utility/icon_map.dart';
import 'package:cs492_weather_app/components/weatherScreen/weather_screen.dart';
import 'package:cs492_weather_app/models/user_location.dart';
import 'package:cs492_weather_app/models/weather_forecast.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActiveWeatherCard extends StatelessWidget {
  const ActiveWeatherCard(
      {super.key, required this.location, required this.activeWeather});
  final UserLocation location;
  final WeatherForecast activeWeather;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.5,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text("Weather", style: textTheme.displayMedium)),
                  Expanded(child: LocationTextWidget(location: location)),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            DateFormat("EEEE, MMMM d").format(
                                DateTime.parse(activeWeather.startTime)
                                    .toLocal()),
                            style: textTheme.labelLarge),
                        Row(
                          children: [
                            TemperatureWidget(activeForecast: activeWeather),
                          ],
                        ),
                        DescriptionWidget(activeForecast: activeWeather),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            iconsMap(activeWeather.shortForecast,
                                activeWeather.isDaytime)
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Wind Speed: ${activeWeather.windSpeed}"),
                          Text(
                              "Wind Direction: ${activeWeather.windDirection}"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
