library temperature_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'temperature_model.g.dart';

abstract class TemperatureModel
    implements Built<TemperatureModel, TemperatureModelBuilder> {
  // Fields
  double get day;
  double get min;
  double get max;
  double get night;
  double get eve;
  double get morn;

  TemperatureModel._();

  factory TemperatureModel([void Function(TemperatureModelBuilder) updates]) =
      _$TemperatureModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TemperatureModel.serializer, this));
  }

  static TemperatureModel fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(TemperatureModel.serializer, jsonMap)!;
  }

  static Serializer<TemperatureModel> get serializer =>
      _$temperatureModelSerializer;
}
