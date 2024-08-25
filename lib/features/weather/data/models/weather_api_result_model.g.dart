// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_result_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherApiResultModel> _$weatherApiResultModelSerializer =
    new _$WeatherApiResultModelSerializer();

class _$WeatherApiResultModelSerializer
    implements StructuredSerializer<WeatherApiResultModel> {
  @override
  final Iterable<Type> types = const [
    WeatherApiResultModel,
    _$WeatherApiResultModel
  ];
  @override
  final String wireName = 'WeatherApiResultModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeatherApiResultModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(String)),
      'timezone_offset',
      serializers.serialize(object.timezoneOffset,
          specifiedType: const FullType(int)),
      'current',
      serializers.serialize(object.current,
          specifiedType: const FullType(CurrentModel)),
      'daily',
      serializers.serialize(object.daily,
          specifiedType:
              const FullType(BuiltList, const [const FullType(DailyModel)])),
    ];

    return result;
  }

  @override
  WeatherApiResultModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherApiResultModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'timezone_offset':
          result.timezoneOffset = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'current':
          result.current.replace(serializers.deserialize(value,
              specifiedType: const FullType(CurrentModel))! as CurrentModel);
          break;
        case 'daily':
          result.daily.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DailyModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherApiResultModel extends WeatherApiResultModel {
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String timezone;
  @override
  final int timezoneOffset;
  @override
  final CurrentModel current;
  @override
  final BuiltList<DailyModel> daily;

  factory _$WeatherApiResultModel(
          [void Function(WeatherApiResultModelBuilder)? updates]) =>
      (new WeatherApiResultModelBuilder()..update(updates))._build();

  _$WeatherApiResultModel._(
      {required this.lat,
      required this.lon,
      required this.timezone,
      required this.timezoneOffset,
      required this.current,
      required this.daily})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(lat, r'WeatherApiResultModel', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, r'WeatherApiResultModel', 'lon');
    BuiltValueNullFieldError.checkNotNull(
        timezone, r'WeatherApiResultModel', 'timezone');
    BuiltValueNullFieldError.checkNotNull(
        timezoneOffset, r'WeatherApiResultModel', 'timezoneOffset');
    BuiltValueNullFieldError.checkNotNull(
        current, r'WeatherApiResultModel', 'current');
    BuiltValueNullFieldError.checkNotNull(
        daily, r'WeatherApiResultModel', 'daily');
  }

  @override
  WeatherApiResultModel rebuild(
          void Function(WeatherApiResultModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherApiResultModelBuilder toBuilder() =>
      new WeatherApiResultModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherApiResultModel &&
        lat == other.lat &&
        lon == other.lon &&
        timezone == other.timezone &&
        timezoneOffset == other.timezoneOffset &&
        current == other.current &&
        daily == other.daily;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, timezoneOffset.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, daily.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherApiResultModel')
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('timezone', timezone)
          ..add('timezoneOffset', timezoneOffset)
          ..add('current', current)
          ..add('daily', daily))
        .toString();
  }
}

class WeatherApiResultModelBuilder
    implements Builder<WeatherApiResultModel, WeatherApiResultModelBuilder> {
  _$WeatherApiResultModel? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  int? _timezoneOffset;
  int? get timezoneOffset => _$this._timezoneOffset;
  set timezoneOffset(int? timezoneOffset) =>
      _$this._timezoneOffset = timezoneOffset;

  CurrentModelBuilder? _current;
  CurrentModelBuilder get current =>
      _$this._current ??= new CurrentModelBuilder();
  set current(CurrentModelBuilder? current) => _$this._current = current;

  ListBuilder<DailyModel>? _daily;
  ListBuilder<DailyModel> get daily =>
      _$this._daily ??= new ListBuilder<DailyModel>();
  set daily(ListBuilder<DailyModel>? daily) => _$this._daily = daily;

  WeatherApiResultModelBuilder();

  WeatherApiResultModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lon = $v.lon;
      _timezone = $v.timezone;
      _timezoneOffset = $v.timezoneOffset;
      _current = $v.current.toBuilder();
      _daily = $v.daily.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherApiResultModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherApiResultModel;
  }

  @override
  void update(void Function(WeatherApiResultModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherApiResultModel build() => _build();

  _$WeatherApiResultModel _build() {
    _$WeatherApiResultModel _$result;
    try {
      _$result = _$v ??
          new _$WeatherApiResultModel._(
              lat: BuiltValueNullFieldError.checkNotNull(
                  lat, r'WeatherApiResultModel', 'lat'),
              lon: BuiltValueNullFieldError.checkNotNull(
                  lon, r'WeatherApiResultModel', 'lon'),
              timezone: BuiltValueNullFieldError.checkNotNull(
                  timezone, r'WeatherApiResultModel', 'timezone'),
              timezoneOffset: BuiltValueNullFieldError.checkNotNull(
                  timezoneOffset, r'WeatherApiResultModel', 'timezoneOffset'),
              current: current.build(),
              daily: daily.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'current';
        current.build();
        _$failedField = 'daily';
        daily.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherApiResultModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
