library weather_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'weather_model.g.dart';

abstract class WeatherModel
    implements Built<WeatherModel, WeatherModelBuilder> {
  // Fields
  int get id;
  String get main;
  String get description;
  String get icon;

  WeatherModel._();

  factory WeatherModel([void Function(WeatherModelBuilder) updates]) =
      _$WeatherModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(WeatherModel.serializer, this));
  }

  static WeatherModel fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(WeatherModel.serializer, jsonMap)!;
  }

  static Serializer<WeatherModel> get serializer => _$weatherModelSerializer;
}
