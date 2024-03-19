import 'package:cs492_weather_app/components/widgets/active_weather_card.dart';
import 'package:cs492_weather_app/components/widgets/daily_forecasts.dart';
import 'package:cs492_weather_app/components/widgets/hourly_forecasts.dart';
import 'package:cs492_weather_app/models/weather_forecast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
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

class ForecastWidget extends StatefulWidget {
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
  State<ForecastWidget> createState() => _ForecastWidgetState();
}

class _ForecastWidgetState extends State<ForecastWidget> {
  late WeatherForecast activeWeather;
  int selectedHourlyIndex = 0;
  int selectedDailyIndex = -1;

  @override
  void initState() {
    super.initState();
    updateActiveWeather(widget.forecastsHourly.elementAt(0));
  }

  void updateActiveWeather(WeatherForecast forecast) {
    setState(() {
      activeWeather = forecast;
    });
  }

  // Need a function that will provide an int (index that was clicked, else -1)
  // Calling it should require an index and a bool, true = hourly, false = daily
  //
  int getHourlyIndex() {
    return selectedHourlyIndex;
  }

  int getDailyIndex() {
    return selectedDailyIndex;
  }

  void setSelectedIndex(int index, bool isHourly) {
    if (isHourly) {
      setState(() {
        selectedHourlyIndex = index;
        selectedDailyIndex = -1;
      });
    } else {
      setState(() {
        selectedDailyIndex = index;
        selectedHourlyIndex = -1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActiveWeatherCard(
            location: widget.location, activeWeather: activeWeather),
        Text("Hourly Forecast: ",
            style: Theme.of(context).textTheme.headlineSmall),
        HourlyForecastList(
          forecasts: widget.forecastsHourly,
          updateActiveWeather: updateActiveWeather,
          getDailyIndex: getDailyIndex,
          getHourlyIndex: getHourlyIndex,
          setSelectedIndex: setSelectedIndex,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Text("Daily Forecast: ",
            style: Theme.of(context).textTheme.headlineSmall),
        Expanded(
          child: DailyForecastList(
            forecasts: widget.forecasts,
            updateActiveWeather: updateActiveWeather,
            getHourlyIndex: getHourlyIndex,
            getDailyIndex: getDailyIndex,
            setSelectedIndex: setSelectedIndex,
          ),
        )
      ],
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.activeForecast,
  });

  final WeatherForecast activeForecast;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        activeForecast.shortForecast,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({super.key, required this.activeForecast});

  final WeatherForecast activeForecast;

  @override
  Widget build(BuildContext context) {
    return Text('${activeForecast.temperature}º',
        style: Theme.of(context).textTheme.displayLarge);
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Text(
            "${location.city}, ${location.state}, ${location.zip}",
            style: Theme.of(context).textTheme.bodyLarge,
            softWrap: true,
          ),
        ),
      ],
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Please enter a valid location, or use your current location to get a forecast!",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Location(
              setLocation: widget.setLocation, getLocation: widget.getLocation),
        ],
      ),
    );
  }
}
