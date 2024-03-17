import 'package:cs492_weather_app/components/widgets/active_weather_card.dart';
import 'package:cs492_weather_app/components/widgets/daily_forecasts.dart';
import 'package:cs492_weather_app/components/widgets/hourly_forecasts.dart';
import 'package:cs492_weather_app/models/weather_forecast.dart';
import '../../models/user_location.dart';
import 'package:flutter/material.dart';
import '../location/location.dart';

class WeatherScreen extends StatefulWidget {
  final Function getLocation;
  final Function getForecasts;
  final Function getForecastsHourly;
  final Function setLocation;

  const WeatherScreen(
      {super.key,
      required this.getLocation,
      required this.getForecasts,
      required this.getForecastsHourly,
      required this.setLocation});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return (widget.getLocation() != null && widget.getForecasts().isNotEmpty
        ? ForecastWidget(
            context: context,
            location: widget.getLocation(),
            forecastsHourly: widget.getForecastsHourly(),
            forecasts: widget.getForecasts())
        : LocationWidget(widget: widget));
  }
}

class ForecastWidget extends StatelessWidget {
  final UserLocation location;
  final List<WeatherForecast> forecasts;
  final List<WeatherForecast> forecastsHourly;
  final BuildContext context;

  const ForecastWidget(
      {super.key,
      required this.context,
      required this.location,
      required this.forecastsHourly,
      required this.forecasts});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.lightBlue, Colors.yellow])),
      child: Column(
        children: [
          ActiveWeatherCard(
              location: location, forecastsHourly: forecastsHourly),
          const Text("Hourly Forecast: "),
          HourlyForecastList(forecasts: forecastsHourly),
          const Text("Daily Forecast: "),
          DailyForecastList(forecasts: forecasts)
        ],
      ),
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.forecasts,
  });

  final List<WeatherForecast> forecasts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 500,
      child: Center(
          child: Text(forecasts.elementAt(0).shortForecast,
              style: Theme.of(context).textTheme.bodyMedium)),
    );
  }
}

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({
    super.key,
    required this.forecasts,
  });

  final List<WeatherForecast> forecasts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 60,
      child: Text('${forecasts.elementAt(0).temperature}º',
          style: Theme.of(context).textTheme.displayLarge),
    );
  }
}

class LocationTextWidget extends StatelessWidget {
  const LocationTextWidget({
    super.key,
    required this.location,
  });

  final UserLocation location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 500,
        child: Text("${location.city}, ${location.state}, ${location.zip}",
            style: Theme.of(context).textTheme.headlineSmall),
      ),
    );
  }
}

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
    required this.widget,
  });

  final WeatherScreen widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
                  "Please enter a valid location, or use your current location to get a forecast!",
                  style: Theme.of(context).textTheme.bodyLarge)),
        ),
        Location(
            setLocation: widget.setLocation, getLocation: widget.getLocation),
      ],
    );
  }
}
