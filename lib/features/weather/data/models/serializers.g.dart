// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(CurrentModel.serializer)
      ..add(DailyModel.serializer)
      ..add(FeelsLikeModel.serializer)
      ..add(TemperatureModel.serializer)
      ..add(WeatherApiResultModel.serializer)
      ..add(WeatherModel.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DailyModel)]),
          () => new ListBuilder<DailyModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeatherModel)]),
          () => new ListBuilder<WeatherModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeatherModel)]),
          () => new ListBuilder<WeatherModel>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
