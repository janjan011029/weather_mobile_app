// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentModel> _$currentModelSerializer =
    new _$CurrentModelSerializer();

class _$CurrentModelSerializer implements StructuredSerializer<CurrentModel> {
  @override
  final Iterable<Type> types = const [CurrentModel, _$CurrentModel];
  @override
  final String wireName = 'CurrentModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CurrentModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dt',
      serializers.serialize(object.dt, specifiedType: const FullType(int)),
      'sunrise',
      serializers.serialize(object.sunrise, specifiedType: const FullType(int)),
      'sunset',
      serializers.serialize(object.sunset, specifiedType: const FullType(int)),
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feels_like',
      serializers.serialize(object.feelsLike,
          specifiedType: const FullType(double)),
      'pressure',
      serializers.serialize(object.pressure,
          specifiedType: const FullType(int)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
      'dew_point',
      serializers.serialize(object.dewPoint,
          specifiedType: const FullType(double)),
      'uvi',
      serializers.serialize(object.uvi, specifiedType: const FullType(double)),
      'clouds',
      serializers.serialize(object.clouds, specifiedType: const FullType(int)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
      'wind_speed',
      serializers.serialize(object.windSpeed,
          specifiedType: const FullType(double)),
      'wind_deg',
      serializers.serialize(object.windDeg, specifiedType: const FullType(int)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherModel)])),
    ];

    return result;
  }

  @override
  CurrentModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'dew_point':
          result.dewPoint = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'uvi':
          result.uvi = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'clouds':
          result.clouds = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'wind_speed':
          result.windSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'wind_deg':
          result.windDeg = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentModel extends CurrentModel {
  @override
  final int dt;
  @override
  final int sunrise;
  @override
  final int sunset;
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  final double dewPoint;
  @override
  final double uvi;
  @override
  final int clouds;
  @override
  final int visibility;
  @override
  final double windSpeed;
  @override
  final int windDeg;
  @override
  final BuiltList<WeatherModel> weather;

  factory _$CurrentModel([void Function(CurrentModelBuilder)? updates]) =>
      (new CurrentModelBuilder()..update(updates))._build();

  _$CurrentModel._(
      {required this.dt,
      required this.sunrise,
      required this.sunset,
      required this.temp,
      required this.feelsLike,
      required this.pressure,
      required this.humidity,
      required this.dewPoint,
      required this.uvi,
      required this.clouds,
      required this.visibility,
      required this.windSpeed,
      required this.windDeg,
      required this.weather})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dt, r'CurrentModel', 'dt');
    BuiltValueNullFieldError.checkNotNull(sunrise, r'CurrentModel', 'sunrise');
    BuiltValueNullFieldError.checkNotNull(sunset, r'CurrentModel', 'sunset');
    BuiltValueNullFieldError.checkNotNull(temp, r'CurrentModel', 'temp');
    BuiltValueNullFieldError.checkNotNull(
        feelsLike, r'CurrentModel', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(
        pressure, r'CurrentModel', 'pressure');
    BuiltValueNullFieldError.checkNotNull(
        humidity, r'CurrentModel', 'humidity');
    BuiltValueNullFieldError.checkNotNull(
        dewPoint, r'CurrentModel', 'dewPoint');
    BuiltValueNullFieldError.checkNotNull(uvi, r'CurrentModel', 'uvi');
    BuiltValueNullFieldError.checkNotNull(clouds, r'CurrentModel', 'clouds');
    BuiltValueNullFieldError.checkNotNull(
        visibility, r'CurrentModel', 'visibility');
    BuiltValueNullFieldError.checkNotNull(
        windSpeed, r'CurrentModel', 'windSpeed');
    BuiltValueNullFieldError.checkNotNull(windDeg, r'CurrentModel', 'windDeg');
    BuiltValueNullFieldError.checkNotNull(weather, r'CurrentModel', 'weather');
  }

  @override
  CurrentModel rebuild(void Function(CurrentModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentModelBuilder toBuilder() => new CurrentModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentModel &&
        dt == other.dt &&
        sunrise == other.sunrise &&
        sunset == other.sunset &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        pressure == other.pressure &&
        humidity == other.humidity &&
        dewPoint == other.dewPoint &&
        uvi == other.uvi &&
        clouds == other.clouds &&
        visibility == other.visibility &&
        windSpeed == other.windSpeed &&
        windDeg == other.windDeg &&
        weather == other.weather;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dt.hashCode);
    _$hash = $jc(_$hash, sunrise.hashCode);
    _$hash = $jc(_$hash, sunset.hashCode);
    _$hash = $jc(_$hash, temp.hashCode);
    _$hash = $jc(_$hash, feelsLike.hashCode);
    _$hash = $jc(_$hash, pressure.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jc(_$hash, dewPoint.hashCode);
    _$hash = $jc(_$hash, uvi.hashCode);
    _$hash = $jc(_$hash, clouds.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, windSpeed.hashCode);
    _$hash = $jc(_$hash, windDeg.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrentModel')
          ..add('dt', dt)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset)
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('pressure', pressure)
          ..add('humidity', humidity)
          ..add('dewPoint', dewPoint)
          ..add('uvi', uvi)
          ..add('clouds', clouds)
          ..add('visibility', visibility)
          ..add('windSpeed', windSpeed)
          ..add('windDeg', windDeg)
          ..add('weather', weather))
        .toString();
  }
}

class CurrentModelBuilder
    implements Builder<CurrentModel, CurrentModelBuilder> {
  _$CurrentModel? _$v;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feelsLike;
  double? get feelsLike => _$this._feelsLike;
  set feelsLike(double? feelsLike) => _$this._feelsLike = feelsLike;

  int? _pressure;
  int? get pressure => _$this._pressure;
  set pressure(int? pressure) => _$this._pressure = pressure;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  double? _dewPoint;
  double? get dewPoint => _$this._dewPoint;
  set dewPoint(double? dewPoint) => _$this._dewPoint = dewPoint;

  double? _uvi;
  double? get uvi => _$this._uvi;
  set uvi(double? uvi) => _$this._uvi = uvi;

  int? _clouds;
  int? get clouds => _$this._clouds;
  set clouds(int? clouds) => _$this._clouds = clouds;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  double? _windSpeed;
  double? get windSpeed => _$this._windSpeed;
  set windSpeed(double? windSpeed) => _$this._windSpeed = windSpeed;

  int? _windDeg;
  int? get windDeg => _$this._windDeg;
  set windDeg(int? windDeg) => _$this._windDeg = windDeg;

  ListBuilder<WeatherModel>? _weather;
  ListBuilder<WeatherModel> get weather =>
      _$this._weather ??= new ListBuilder<WeatherModel>();
  set weather(ListBuilder<WeatherModel>? weather) => _$this._weather = weather;

  CurrentModelBuilder();

  CurrentModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dt = $v.dt;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _pressure = $v.pressure;
      _humidity = $v.humidity;
      _dewPoint = $v.dewPoint;
      _uvi = $v.uvi;
      _clouds = $v.clouds;
      _visibility = $v.visibility;
      _windSpeed = $v.windSpeed;
      _windDeg = $v.windDeg;
      _weather = $v.weather.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentModel;
  }

  @override
  void update(void Function(CurrentModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrentModel build() => _build();

  _$CurrentModel _build() {
    _$CurrentModel _$result;
    try {
      _$result = _$v ??
          new _$CurrentModel._(
              dt: BuiltValueNullFieldError.checkNotNull(
                  dt, r'CurrentModel', 'dt'),
              sunrise: BuiltValueNullFieldError.checkNotNull(
                  sunrise, r'CurrentModel', 'sunrise'),
              sunset: BuiltValueNullFieldError.checkNotNull(
                  sunset, r'CurrentModel', 'sunset'),
              temp: BuiltValueNullFieldError.checkNotNull(
                  temp, r'CurrentModel', 'temp'),
              feelsLike: BuiltValueNullFieldError.checkNotNull(
                  feelsLike, r'CurrentModel', 'feelsLike'),
              pressure: BuiltValueNullFieldError.checkNotNull(
                  pressure, r'CurrentModel', 'pressure'),
              humidity: BuiltValueNullFieldError.checkNotNull(
                  humidity, r'CurrentModel', 'humidity'),
              dewPoint: BuiltValueNullFieldError.checkNotNull(
                  dewPoint, r'CurrentModel', 'dewPoint'),
              uvi: BuiltValueNullFieldError.checkNotNull(
                  uvi, r'CurrentModel', 'uvi'),
              clouds:
                  BuiltValueNullFieldError.checkNotNull(clouds, r'CurrentModel', 'clouds'),
              visibility: BuiltValueNullFieldError.checkNotNull(visibility, r'CurrentModel', 'visibility'),
              windSpeed: BuiltValueNullFieldError.checkNotNull(windSpeed, r'CurrentModel', 'windSpeed'),
              windDeg: BuiltValueNullFieldError.checkNotNull(windDeg, r'CurrentModel', 'windDeg'),
              weather: weather.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CurrentModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
