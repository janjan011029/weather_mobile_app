import 'package:flutter/material.dart';
import 'package:weather_mobile_app/core/extensions/date_extentions.dart';

class WeatherListTile extends StatelessWidget {
  const WeatherListTile({
    super.key,
    required this.index,
    required this.min,
    required this.max,
    required this.weatherDescription,
    required this.imageUrl,
  });

  final int index;
  final double min;
  final double max;
  final String weatherDescription;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final dateNow = DateTime.now();
    final date = dateNow.add(Duration(days: index)).withDayFormat();
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      leading: Text(
        date,
        style: const TextStyle(fontSize: 14),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                height: 48,
                width: 48,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 8),
              Text(
                '$max / $min°C',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              weatherDescription,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
