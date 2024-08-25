// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyModel> _$dailyModelSerializer = new _$DailyModelSerializer();

class _$DailyModelSerializer implements StructuredSerializer<DailyModel> {
  @override
  final Iterable<Type> types = const [DailyModel, _$DailyModel];
  @override
  final String wireName = 'DailyModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, DailyModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dt',
      serializers.serialize(object.dt, specifiedType: const FullType(int)),
      'sunrise',
      serializers.serialize(object.sunrise, specifiedType: const FullType(int)),
      'sunset',
      serializers.serialize(object.sunset, specifiedType: const FullType(int)),
      'moonrise',
      serializers.serialize(object.moonrise,
          specifiedType: const FullType(int)),
      'moonset',
      serializers.serialize(object.moonset, specifiedType: const FullType(int)),
      'moon_phase',
      serializers.serialize(object.moonPhase,
          specifiedType: const FullType(double)),
      'temp',
      serializers.serialize(object.temp,
          specifiedType: const FullType(TemperatureModel)),
      'feels_like',
      serializers.serialize(object.feelsLike,
          specifiedType: const FullType(FeelsLikeModel)),
      'pressure',
      serializers.serialize(object.pressure,
          specifiedType: const FullType(int)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
      'dew_point',
      serializers.serialize(object.dewPoint,
          specifiedType: const FullType(double)),
      'wind_speed',
      serializers.serialize(object.windSpeed,
          specifiedType: const FullType(double)),
      'wind_deg',
      serializers.serialize(object.windDeg, specifiedType: const FullType(int)),
      'wind_gust',
      serializers.serialize(object.windGust,
          specifiedType: const FullType(double)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherModel)])),
      'clouds',
      serializers.serialize(object.clouds, specifiedType: const FullType(int)),
      'pop',
      serializers.serialize(object.pop, specifiedType: const FullType(double)),
      'uvi',
      serializers.serialize(object.uvi, specifiedType: const FullType(double)),
    ];
    Object? value;
    value = object.rain;
    if (value != null) {
      result
        ..add('rain')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  DailyModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyModelBuilder();

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
        case 'moonrise':
          result.moonrise = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'moonset':
          result.moonset = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'moon_phase':
          result.moonPhase = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'temp':
          result.temp.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TemperatureModel))!
              as TemperatureModel);
          break;
        case 'feels_like':
          result.feelsLike.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FeelsLikeModel))!
              as FeelsLikeModel);
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
        case 'wind_speed':
          result.windSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'wind_deg':
          result.windDeg = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'wind_gust':
          result.windGust = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherModel)]))!
              as BuiltList<Object?>);
          break;
        case 'clouds':
          result.clouds = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'pop':
          result.pop = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'rain':
          result.rain = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uvi':
          result.uvi = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$DailyModel extends DailyModel {
  @override
  final int dt;
  @override
  final int sunrise;
  @override
  final int sunset;
  @override
  final int moonrise;
  @override
  final int moonset;
  @override
  final double moonPhase;
  @override
  final TemperatureModel temp;
  @override
  final FeelsLikeModel feelsLike;
  @override
  final int pressure;
  @override
  final int humidity;
  @override
  final double dewPoint;
  @override
  final double windSpeed;
  @override
  final int windDeg;
  @override
  final double windGust;
  @override
  final BuiltList<WeatherModel> weather;
  @override
  final int clouds;
  @override
  final double pop;
  @override
  final double? rain;
  @override
  final double uvi;

  factory _$DailyModel([void Function(DailyModelBuilder)? updates]) =>
      (new DailyModelBuilder()..update(updates))._build();

  _$DailyModel._(
      {required this.dt,
      required this.sunrise,
      required this.sunset,
      required this.moonrise,
      required this.moonset,
      required this.moonPhase,
      required this.temp,
      required this.feelsLike,
      required this.pressure,
      required this.humidity,
      required this.dewPoint,
      required this.windSpeed,
      required this.windDeg,
      required this.windGust,
      required this.weather,
      required this.clouds,
      required this.pop,
      this.rain,
      required this.uvi})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dt, r'DailyModel', 'dt');
    BuiltValueNullFieldError.checkNotNull(sunrise, r'DailyModel', 'sunrise');
    BuiltValueNullFieldError.checkNotNull(sunset, r'DailyModel', 'sunset');
    BuiltValueNullFieldError.checkNotNull(moonrise, r'DailyModel', 'moonrise');
    BuiltValueNullFieldError.checkNotNull(moonset, r'DailyModel', 'moonset');
    BuiltValueNullFieldError.checkNotNull(
        moonPhase, r'DailyModel', 'moonPhase');
    BuiltValueNullFieldError.checkNotNull(temp, r'DailyModel', 'temp');
    BuiltValueNullFieldError.checkNotNull(
        feelsLike, r'DailyModel', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(pressure, r'DailyModel', 'pressure');
    BuiltValueNullFieldError.checkNotNull(humidity, r'DailyModel', 'humidity');
    BuiltValueNullFieldError.checkNotNull(dewPoint, r'DailyModel', 'dewPoint');
    BuiltValueNullFieldError.checkNotNull(
        windSpeed, r'DailyModel', 'windSpeed');
    BuiltValueNullFieldError.checkNotNull(windDeg, r'DailyModel', 'windDeg');
    BuiltValueNullFieldError.checkNotNull(windGust, r'DailyModel', 'windGust');
    BuiltValueNullFieldError.checkNotNull(weather, r'DailyModel', 'weather');
    BuiltValueNullFieldError.checkNotNull(clouds, r'DailyModel', 'clouds');
    BuiltValueNullFieldError.checkNotNull(pop, r'DailyModel', 'pop');
    BuiltValueNullFieldError.checkNotNull(uvi, r'DailyModel', 'uvi');
  }

  @override
  DailyModel rebuild(void Function(DailyModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyModelBuilder toBuilder() => new DailyModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyModel &&
        dt == other.dt &&
        sunrise == other.sunrise &&
        sunset == other.sunset &&
        moonrise == other.moonrise &&
        moonset == other.moonset &&
        moonPhase == other.moonPhase &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        pressure == other.pressure &&
        humidity == other.humidity &&
        dewPoint == other.dewPoint &&
        windSpeed == other.windSpeed &&
        windDeg == other.windDeg &&
        windGust == other.windGust &&
        weather == other.weather &&
        clouds == other.clouds &&
        pop == other.pop &&
        rain == other.rain &&
        uvi == other.uvi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dt.hashCode);
    _$hash = $jc(_$hash, sunrise.hashCode);
    _$hash = $jc(_$hash, sunset.hashCode);
    _$hash = $jc(_$hash, moonrise.hashCode);
    _$hash = $jc(_$hash, moonset.hashCode);
    _$hash = $jc(_$hash, moonPhase.hashCode);
    _$hash = $jc(_$hash, temp.hashCode);
    _$hash = $jc(_$hash, feelsLike.hashCode);
    _$hash = $jc(_$hash, pressure.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jc(_$hash, dewPoint.hashCode);
    _$hash = $jc(_$hash, windSpeed.hashCode);
    _$hash = $jc(_$hash, windDeg.hashCode);
    _$hash = $jc(_$hash, windGust.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, clouds.hashCode);
    _$hash = $jc(_$hash, pop.hashCode);
    _$hash = $jc(_$hash, rain.hashCode);
    _$hash = $jc(_$hash, uvi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyModel')
          ..add('dt', dt)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset)
          ..add('moonrise', moonrise)
          ..add('moonset', moonset)
          ..add('moonPhase', moonPhase)
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('pressure', pressure)
          ..add('humidity', humidity)
          ..add('dewPoint', dewPoint)
          ..add('windSpeed', windSpeed)
          ..add('windDeg', windDeg)
          ..add('windGust', windGust)
          ..add('weather', weather)
          ..add('clouds', clouds)
          ..add('pop', pop)
          ..add('rain', rain)
          ..add('uvi', uvi))
        .toString();
  }
}

class DailyModelBuilder implements Builder<DailyModel, DailyModelBuilder> {
  _$DailyModel? _$v;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  int? _moonrise;
  int? get moonrise => _$this._moonrise;
  set moonrise(int? moonrise) => _$this._moonrise = moonrise;

  int? _moonset;
  int? get moonset => _$this._moonset;
  set moonset(int? moonset) => _$this._moonset = moonset;

  double? _moonPhase;
  double? get moonPhase => _$this._moonPhase;
  set moonPhase(double? moonPhase) => _$this._moonPhase = moonPhase;

  TemperatureModelBuilder? _temp;
  TemperatureModelBuilder get temp =>
      _$this._temp ??= new TemperatureModelBuilder();
  set temp(TemperatureModelBuilder? temp) => _$this._temp = temp;

  FeelsLikeModelBuilder? _feelsLike;
  FeelsLikeModelBuilder get feelsLike =>
      _$this._feelsLike ??= new FeelsLikeModelBuilder();
  set feelsLike(FeelsLikeModelBuilder? feelsLike) =>
      _$this._feelsLike = feelsLike;

  int? _pressure;
  int? get pressure => _$this._pressure;
  set pressure(int? pressure) => _$this._pressure = pressure;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  double? _dewPoint;
  double? get dewPoint => _$this._dewPoint;
  set dewPoint(double? dewPoint) => _$this._dewPoint = dewPoint;

  double? _windSpeed;
  double? get windSpeed => _$this._windSpeed;
  set windSpeed(double? windSpeed) => _$this._windSpeed = windSpeed;

  int? _windDeg;
  int? get windDeg => _$this._windDeg;
  set windDeg(int? windDeg) => _$this._windDeg = windDeg;

  double? _windGust;
  double? get windGust => _$this._windGust;
  set windGust(double? windGust) => _$this._windGust = windGust;

  ListBuilder<WeatherModel>? _weather;
  ListBuilder<WeatherModel> get weather =>
      _$this._weather ??= new ListBuilder<WeatherModel>();
  set weather(ListBuilder<WeatherModel>? weather) => _$this._weather = weather;

  int? _clouds;
  int? get clouds => _$this._clouds;
  set clouds(int? clouds) => _$this._clouds = clouds;

  double? _pop;
  double? get pop => _$this._pop;
  set pop(double? pop) => _$this._pop = pop;

  double? _rain;
  double? get rain => _$this._rain;
  set rain(double? rain) => _$this._rain = rain;

  double? _uvi;
  double? get uvi => _$this._uvi;
  set uvi(double? uvi) => _$this._uvi = uvi;

  DailyModelBuilder();

  DailyModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dt = $v.dt;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _moonrise = $v.moonrise;
      _moonset = $v.moonset;
      _moonPhase = $v.moonPhase;
      _temp = $v.temp.toBuilder();
      _feelsLike = $v.feelsLike.toBuilder();
      _pressure = $v.pressure;
      _humidity = $v.humidity;
      _dewPoint = $v.dewPoint;
      _windSpeed = $v.windSpeed;
      _windDeg = $v.windDeg;
      _windGust = $v.windGust;
      _weather = $v.weather.toBuilder();
      _clouds = $v.clouds;
      _pop = $v.pop;
      _rain = $v.rain;
      _uvi = $v.uvi;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyModel;
  }

  @override
  void update(void Function(DailyModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyModel build() => _build();

  _$DailyModel _build() {
    _$DailyModel _$result;
    try {
      _$result = _$v ??
          new _$DailyModel._(
              dt: BuiltValueNullFieldError.checkNotNull(
                  dt, r'DailyModel', 'dt'),
              sunrise: BuiltValueNullFieldError.checkNotNull(
                  sunrise, r'DailyModel', 'sunrise'),
              sunset: BuiltValueNullFieldError.checkNotNull(
                  sunset, r'DailyModel', 'sunset'),
              moonrise: BuiltValueNullFieldError.checkNotNull(
                  moonrise, r'DailyModel', 'moonrise'),
              moonset: BuiltValueNullFieldError.checkNotNull(
                  moonset, r'DailyModel', 'moonset'),
              moonPhase: BuiltValueNullFieldError.checkNotNull(
                  moonPhase, r'DailyModel', 'moonPhase'),
              temp: temp.build(),
              feelsLike: feelsLike.build(),
              pressure: BuiltValueNullFieldError.checkNotNull(
                  pressure, r'DailyModel', 'pressure'),
              humidity: BuiltValueNullFieldError.checkNotNull(
                  humidity, r'DailyModel', 'humidity'),
              dewPoint: BuiltValueNullFieldError.checkNotNull(
                  dewPoint, r'DailyModel', 'dewPoint'),
              windSpeed: BuiltValueNullFieldError.checkNotNull(
                  windSpeed, r'DailyModel', 'windSpeed'),
              windDeg: BuiltValueNullFieldError.checkNotNull(windDeg, r'DailyModel', 'windDeg'),
              windGust: BuiltValueNullFieldError.checkNotNull(windGust, r'DailyModel', 'windGust'),
              weather: weather.build(),
              clouds: BuiltValueNullFieldError.checkNotNull(clouds, r'DailyModel', 'clouds'),
              pop: BuiltValueNullFieldError.checkNotNull(pop, r'DailyModel', 'pop'),
              rain: rain,
              uvi: BuiltValueNullFieldError.checkNotNull(uvi, r'DailyModel', 'uvi'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'temp';
        temp.build();
        _$failedField = 'feelsLike';
        feelsLike.build();

        _$failedField = 'weather';
        weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DailyModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
