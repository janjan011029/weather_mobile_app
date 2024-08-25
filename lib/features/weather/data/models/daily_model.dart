library daily_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_mobile_app/features/weather/data/models/feels_like_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/temperature_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_model.dart';

import 'serializers.dart';

part 'daily_model.g.dart';

abstract class DailyModel implements Built<DailyModel, DailyModelBuilder> {
  // Fields
  int get dt;
  int get sunrise;
  int get sunset;
  int get moonrise;
  int get moonset;
  @BuiltValueField(wireName: 'moon_phase')
  double get moonPhase;
  TemperatureModel get temp;
  @BuiltValueField(wireName: 'feels_like')
  FeelsLikeModel get feelsLike;
  int get pressure;
  int get humidity;
  @BuiltValueField(wireName: 'dew_point')
  double get dewPoint;
  @BuiltValueField(wireName: 'wind_speed')
  double get windSpeed;
  @BuiltValueField(wireName: 'wind_deg')
  int get windDeg;
  @BuiltValueField(wireName: 'wind_gust')
  double get windGust;
  BuiltList<WeatherModel> get weather;
  int get clouds;
  double get pop;
  @BuiltValueField(wireName: 'rain')
  double? get rain;
  double get uvi;

  DailyModel._();

  factory DailyModel([void Function(DailyModelBuilder) updates]) = _$DailyModel;

  String toJson() {
    return json.encode(serializers.serializeWith(DailyModel.serializer, this));
  }

  static DailyModel fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(DailyModel.serializer, jsonMap)!;
  }

  static Serializer<DailyModel> get serializer => _$dailyModelSerializer;
}
