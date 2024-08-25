library feels_like_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'feels_like_model.g.dart';

abstract class FeelsLikeModel
    implements Built<FeelsLikeModel, FeelsLikeModelBuilder> {
  // Fields
  double get day;
  double get night;
  double get eve;
  double get morn;

  FeelsLikeModel._();

  factory FeelsLikeModel([void Function(FeelsLikeModelBuilder) updates]) =
      _$FeelsLikeModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(FeelsLikeModel.serializer, this));
  }

  static FeelsLikeModel fromJson(Map<String, dynamic> jsonMap) {
    return serializers.deserializeWith(FeelsLikeModel.serializer, jsonMap)!;
  }

  static Serializer<FeelsLikeModel> get serializer =>
      _$feelsLikeModelSerializer;
}
