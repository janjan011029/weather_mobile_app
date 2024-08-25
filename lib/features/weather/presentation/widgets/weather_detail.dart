import 'package:flutter/material.dart';

class WeatherDetail extends StatelessWidget {
  final IconData? icon;
  final String value;
  final String? label;

  const WeatherDetail({
    super.key,
    this.icon,
    required this.value,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null) ...[
          Icon(
            icon,
            size: 16,
            color: Colors.orangeAccent,
          ),
          const SizedBox(width: 4),
        ],
        if (label != null) ...[
          Text(
            '$label ',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ],
        Text(
          value,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
