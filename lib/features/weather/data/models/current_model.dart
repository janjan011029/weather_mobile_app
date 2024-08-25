library current_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_mobile_app/features/weather/data/models/weather_model.dart';

import 'serializers.dart';

part 'current_model.g.dart';

abstract class CurrentModel
    implements Built<CurrentModel, CurrentModelBuilder> {
  // Fields
  int get dt;
  int get sunrise;
  int get sunset;
  double get temp;
  @BuiltValueField(wireName: 'feels_like')
  double get feelsLike;
  int get pressure;
  int get humidity;
  @BuiltValueField(wireName: 'dew_point')
  double get dewPoint;
  double get uvi;
  int get clouds;
  int get visibility;
  @BuiltValueField(wireName: 'wind_speed')
  double get windSpeed;
  @BuiltValueField(wireName: 'wind_deg')
  int get windDeg;
  BuiltList<WeatherModel> get weather;

  CurrentModel._();

  factory CurrentModel([void Function(CurrentModelBuilder) updates]) =
      _$CurrentModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CurrentModel.serializer, this));
  }

  static CurrentModel fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(CurrentModel.serializer, jsonMap)!;
  }

  static Serializer<CurrentModel> get serializer => _$currentModelSerializer;
}
