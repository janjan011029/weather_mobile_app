library weather_api_result_model;


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_mobile_app/features/weather/data/models/current_model.dart';
import 'package:weather_mobile_app/features/weather/data/models/daily_model.dart';

import 'serializers.dart';

part 'weather_api_result_model.g.dart';

abstract class WeatherApiResultModel
    implements Built<WeatherApiResultModel, WeatherApiResultModelBuilder> {
  // Fields
  double get lat;
  double get lon;
  String get timezone;
  @BuiltValueField(wireName: 'timezone_offset')
  int get timezoneOffset;
  CurrentModel get current;
  BuiltList<DailyModel> get daily;

  WeatherApiResultModel._();

  factory WeatherApiResultModel(
          [void Function(WeatherApiResultModelBuilder) updates]) =
      _$WeatherApiResultModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(WeatherApiResultModel.serializer, this)
        as Map<String, dynamic>;
  }

  static WeatherApiResultModel fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(
        WeatherApiResultModel.serializer, jsonMap)!;
  }

  static Serializer<WeatherApiResultModel> get serializer =>
      _$weatherApiResultModelSerializer;
}
