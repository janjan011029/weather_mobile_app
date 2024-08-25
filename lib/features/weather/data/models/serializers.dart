library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_mobile_app/features/weather/data/models/current_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/daily_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/feels_like_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/temperature_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_model.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor([
  WeatherApiResultModel,
  WeatherModel,
  CurrentModel,
  TemperatureModel,
  DailyModel,
  FeelsLikeModel,
])

final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin()))
    .build();