import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Icon iconsMap(String description, bool isDayTime) {
  switch (description) {
    case "Fair":
    case "Clear":
    case "Fair with Haze":
    case "Clear with Haze":
    case "Fair and Breezy":
    case "Clear and Breezy":
    case "Sunny":
    case "Mostly Sunny":
    case "Mostly Clear":
      if (isDayTime) {
        return const Icon(FontAwesomeIcons.solidSun, size: 40);
      } else {
        return const Icon(FontAwesomeIcons.solidMoon, size: 40);
      }
    case "Mostly Cloudy":
    case "Mostly Cloudy with Haze":
    case "Mostly Cloudy and Breezy":
    case "A Few Clouds":
    case "A Few Clouds with Haze":
    case "A Few Clouds and Breezy":
    case "Partly Cloudy":
    case "Partly Cloudy with Haze":
    case "Partly Cloudy and Breezy":
    case "Partly Sunny":
    case "Partly Cloudy then Slight Chance Light Rain":
      if (isDayTime) {
        return const Icon(FontAwesomeIcons.cloudSun, size: 40);
      } else {
        return const Icon(FontAwesomeIcons.cloudMoon, size: 40);
      }
    case "Overcast":
    case "Overcast with Haze":
    case "Overcast and Breezy":
      return const Icon(FontAwesomeIcons.cloud, size: 40);
    case "Fog/Mist":
    case "Fog":
    case "Freezing Fog":
    case "Shallow Fog":
    case "Partial Fog":
    case "Patches of Fog":
    case "Fog in Vicinity":
    case "Freezing Fog in Vicinity":
    case "Shallow Fog in Vicinity":
    case "Partial Fog in Vicinity":
    case "Patches of Fog in Vicinity":
    case "Showers in Vicinity Fog":
    case "Light Freezing Fog":
    case "Heavy Freezing Fog":
    case "Smoke":
    case "Dust":
    case "Low Drifting Dust":
    case "Blowing Dust":
    case "Sand":
    case "Blowing Sand":
    case "Low Drifting Sand":
    case "Dust/Sand Whirls":
    case "Dust/Sand Whirls in Vicinity":
    case "Dust Storm":
    case "Heavy Dust Storm":
    case "Dust Storm in Vicinity":
    case "Sand Storm":
    case "Heavy Sand Storm":
    case "Sand Storm in Vicinity":
    case "Haze":
    case "Patchy Fog":
    case "Mostly Clear then Patchy Fog":
    case "Patchy Fog then Mostly Sunny":
      return const Icon(FontAwesomeIcons.smog, size: 40);
    case "Chance Light Rain":
    case "Partly Sunny then Slight Chance Light Rain":
    case "Light Rain Likely then Chance Rain And Snow":
    case "Slight Chance Light Rain":
    case "Rain And Snow Likely":
    case "Chance Rain And Snow":
    case "Light Rain Likely":
    case "Rain Showers Likely":
    case "Freezing Rain":
    case "Freezing Drizzle":
    case "Light Freezing Rain":
    case "Light Freezing Drizzle":
    case "Heavy Freezing Rain":
    case "Heavy Freezing Drizzle":
    case "Freezing Rain in Vicinity":
    case "Freezing Drizzle in Vicinity":
    case "Freezing Rain Snow":
    case "Light Freezing Rain Snow":
    case "Heavy Freezing Rain Snow":
    case "Freezing Drizzle Snow":
    case "Light Freezing Drizzle Snow":
    case "Heavy Freezing Drizzle Snow":
    case "Snow Freezing Rain":
    case "Light Snow Freezing Rain":
    case "Heavy Snow Freezing Rain":
    case "Snow Freezing Drizzle":
    case "Light Snow Freezing Drizzle":
    case "Heavy Snow Freezing Drizzle":
    case "Rain Snow":
    case "Light Rain Snow":
    case "Heavy Rain Snow":
    case "Snow Rain":
    case "Light Snow Rain":
    case "Heavy Snow Rain":
    case "Drizzle Snow":
    case "Light Drizzle Snow":
    case "Heavy Drizzle Snow":
    case "Snow Drizzle":
    case "Light Snow Drizzle":
    case "Heavy Snow Drizzle":
      if (isDayTime) {
        return const Icon(FontAwesomeIcons.cloudShowersHeavy, size: 40);
      } else {
        return const Icon(FontAwesomeIcons.cloudMoonRain, size: 40);
      }
    case "Ice Pellets":
    case "Light Ice Pellets":
    case "Heavy Ice Pellets":
    case "Ice Pellets in Vicinity":
    case "Showers Ice Pellets":
    case "Thunderstorm Ice Pellets":
    case "Ice Crystals":
    case "Hail":
    case "Small Hail/Snow Pellets":
    case "Light Small Hail/Snow Pellets":
    case "Heavy Small Hail/Snow Pellets":
    case "Showers Hail":
    case "Hail Showers":
    case "Rain Ice Pellets":
    case "Light Rain Ice Pellets":
    case "Heavy Rain Ice Pellets":
    case "Drizzle Ice Pellets":
    case "Light Drizzle Ice Pellets":
    case "Heavy Drizzle Ice Pellets":
    case "Ice Pellets Rain":
    case "Light Ice Pellets Rain":
    case "Heavy Ice Pellets Rain":
    case "Ice Pellets Drizzle":
    case "Light Ice Pellets Drizzle":
    case "Heavy Ice Pellets Drizzle":
      return const Icon(FontAwesomeIcons.cloudMeatball, size: 40);
    case "Rain Showers":
    case "Scattered Rain Showers":
    case "Light Rain Showers":
    case "Light Rain and Breezy":
    case "Heavy Rain Showers":
    case "Rain Showers in Vicinity":
    case "Light Showers Rain":
    case "Heavy Showers Rain":
    case "Showers Rain":
    case "Showers Rain in Vicinity":
    case "Rain Showers Fog/Mist":
    case "Light Rain Showers Fog/Mist":
    case "Heavy Rain Showers Fog/Mist":
    case "Rain Showers in Vicinity Fog/Mist":
    case "Light Showers Rain Fog/Mist":
    case "Heavy Showers Rain Fog/Mist":
    case "Showers Rain Fog/Mist":
    case "Showers Rain in Vicinity Fog/Mist":
    case "Light Rain":
    case "Drizzle":
    case "Light Drizzle":
    case "Heavy Drizzle":
    case "Light Rain Fog/Mist":
    case "Drizzle Fog/Mist":
    case "Light Drizzle Fog/Mist":
    case "Heavy Drizzle Fog/Mist":
    case "Light Rain Fog":
    case "Drizzle Fog":
    case "Light Drizzle Fog":
    case "Heavy Drizzle Fog":
    case "Rain":
    case "Heavy Rain":
    case "Rain Fog/Mist":
    case "Heavy Rain Fog/Mist":
    case "Rain Fog":
    case "Heavy Rain Fog":
      return const Icon(FontAwesomeIcons.cloudRain, size: 40);
    case "Thunderstorm":
    case "Thunderstorm Rain":
    case "Light Thunderstorm Rain":
    case "Heavy Thunderstorm Rain":
    case "Thunderstorm Rain Fog/Mist":
    case "Light Thunderstorm Rain Fog/Mist":
    case "Heavy Thunderstorm Rain Fog and Windy":
    case "Heavy Thunderstorm Rain Fog/Mist":
    case "Light Thunderstorm Rain Haze":
    case "Heavy Thunderstorm Rain Haze":
    case "Thunderstorm Fog":
    case "Light Thunderstorm Rain Fog":
    case "Heavy Thunderstorm Rain Fog":
    case "Thunderstorm Light Rain":
    case "Thunderstorm Heavy Rain":
    case "Thunderstorm Light Rain Fog/Mist":
    case "Thunderstorm Heavy Rain Fog/Mist":
    case "Thunderstorm in Vicinity Fog/Mist":
    case "Thunderstorm Showers in Vicinity":
    case "Thunderstorm in Vicinity Haze":
    case "Thunderstorm Haze in Vicinity":
    case "Thunderstorm Light Rain Haze":
    case "Thunderstorm Heavy Rain Haze":
    case "Thunderstorm Light Rain Fog":
    case "Thunderstorm Heavy Rain Fog":
    case "Thunderstorm Hail":
    case "Light Thunderstorm Rain Hail":
    case "Heavy Thunderstorm Rain Hail":
    case "Thunderstorm Rain Hail Fog/Mist":
    case "Light Thunderstorm Rain Hail Fog/Mist":
    case "Heavy Thunderstorm Rain Hail Fog/Hail":
    case "Thunderstorm Showers in Vicinity Hail":
    case "Light Thunderstorm Rain Hail Haze":
    case "Heavy Thunderstorm Rain Hail Haze":
    case "Thunderstorm Hail Fog":
    case "Light Thunderstorm Rain Hail Fog":
    case "Heavy Thunderstorm Rain Hail Fog":
    case "Thunderstorm Light Rain Hail":
    case "Thunderstorm Heavy Rain Hail":
    case "Thunderstorm Light Rain Hail Fog/Mist":
    case "Thunderstorm Heavy Rain Hail Fog/Mist":
    case "Thunderstorm in Vicinity Hail":
    case "Thunderstorm in Vicinity Hail Haze":
    case "Thunderstorm Haze in Vicinity Hail":
    case "Thunderstorm Light Rain Hail Haze":
    case "Thunderstorm Heavy Rain Hail Haze":
    case "Thunderstorm Light Rain Hail Fog":
    case "Thunderstorm Heavy Rain Hail Fog":
    case "Thunderstorm Small Hail/Snow Pellets":
    case "Thunderstorm Rain Small Hail/Snow Pellets":
    case "Light Thunderstorm Rain Small Hail/Snow Pellets":
    case "Heavy Thunderstorm Rain Small Hail/Snow Pellets":
    case "Showers and Thunder":
      return const Icon(FontAwesomeIcons.cloudBolt, size: 40);
    case "Snow":
    case "Light Snow":
    case "Heavy Snow":
    case "Snow Showers":
    case "Light Snow Showers":
    case "Heavy Snow Showers":
    case "Showers Snow":
    case "Light Showers Snow":
    case "Heavy Showers Snow":
    case "Snow Fog/Mist":
    case "Light Snow Fog/Mist":
    case "Heavy Snow Fog/Mist":
    case "Snow Showers Fog/Mist":
    case "Light Snow Showers Fog/Mist":
    case "Heavy Snow Showers Fog/Mist":
    case "Showers Snow Fog/Mist":
    case "Light Showers Snow Fog/Mist":
    case "Heavy Showers Snow Fog/Mist":
    case "Snow Fog":
    case "Light Snow Fog":
    case "Heavy Snow Fog":
    case "Snow Showers Fog":
    case "Light Snow Showers Fog":
    case "Heavy Snow Showers Fog":
    case "Showers Snow Fog":
    case "Light Showers Snow Fog":
    case "Heavy Showers Snow Fog":
    case "Showers in Vicinity Snow":
    case "Snow Showers in Vicinity":
    case "Snow Showers in Vicinity Fog/Mist":
    case "Snow Showers in Vicinity Fog":
    case "Low Drifting Snow":
    case "Blowing Snow":
    case "Snow Low Drifting Snow":
    case "Snow Blowing Snow":
    case "Light Snow Low Drifting Snow":
    case "Light Snow Blowing Snow":
    case "Light Snow Blowing Snow Fog/Mist":
    case "Heavy Snow Low Drifting Snow":
    case "Heavy Snow Blowing Snow":
    case "Thunderstorm Snow":
    case "Light Thunderstorm Snow":
    case "Heavy Thunderstorm Snow":
    case "Snow Grains":
    case "Light Snow Grains":
    case "Heavy Snow Grains":
    case "Heavy Blowing Snow":
    case "Blowing Snow in Vicinity":
    case "Chance Light Snow":
      return const Icon(FontAwesomeIcons.snowflake, size: 40);
    case "Windy":
    case "Breezy":
    case "Fair and Windy":
    case "A Few Clouds and Windy":
    case "Partly Cloudy and Windy":
    case "Mostly Cloudy and Windy":
    case "Overcast and Windy":
      return const Icon(FontAwesomeIcons.wind, size: 40);
    case "Funnel Cloud":
    case "Funnel Cloud in Vicinity":
    case "Tornado/Water Spout":
      return const Icon(FontAwesomeIcons.tornado, size: 40);
    default:
      return const Icon(FontAwesomeIcons.question, size: 40);
  }
}
