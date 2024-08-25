import 'package:flutter/material.dart';
import 'package:weather_mobile_app/core/extensions/date_extentions.dart';
import 'package:weather_mobile_app/features/weather/presentation/widgets/weather_detail.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    super.key,
    required this.timezone,
    required this.imageUrl,
    required this.temp,
    required this.feelsLike,
    required this.uvi,
    required this.dewPoint,
    required this.humidity,
    required this.visibility,
  });

  final String timezone;
  final String imageUrl;
  final double temp;
  final double feelsLike;
  final double uvi;
  final double dewPoint;
  final int humidity;
  final int visibility;

  @override
  Widget build(BuildContext context) {
    final dateNow = DateTime.now();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dateNow.toCustomFormat(),
            style: const TextStyle(
              color: Colors.orangeAccent,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            timezone,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                width: 48,
                height: 48,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 8),
              Text(
                '$temp°C',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WeatherDetail(
                label: 'Feels like:',
                value: '$feelsLike°C.',
              ),
              WeatherDetail(
                label: 'Humidity:',
                value: '$humidity%',
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WeatherDetail(
                label: 'UV:',
                value: '$uvi',
              ),
              WeatherDetail(
                label: 'Dew point:',
                value: '$dewPoint°C',
              ),
              WeatherDetail(
                label: 'Visibility:',
                value: '$visibility',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
