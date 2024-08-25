// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TemperatureModel> _$temperatureModelSerializer =
    new _$TemperatureModelSerializer();

class _$TemperatureModelSerializer
    implements StructuredSerializer<TemperatureModel> {
  @override
  final Iterable<Type> types = const [TemperatureModel, _$TemperatureModel];
  @override
  final String wireName = 'TemperatureModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, TemperatureModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'day',
      serializers.serialize(object.day, specifiedType: const FullType(double)),
      'min',
      serializers.serialize(object.min, specifiedType: const FullType(double)),
      'max',
      serializers.serialize(object.max, specifiedType: const FullType(double)),
      'night',
      serializers.serialize(object.night,
          specifiedType: const FullType(double)),
      'eve',
      serializers.serialize(object.eve, specifiedType: const FullType(double)),
      'morn',
      serializers.serialize(object.morn, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  TemperatureModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TemperatureModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'max':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'night':
          result.night = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'eve':
          result.eve = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'morn':
          result.morn = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$TemperatureModel extends TemperatureModel {
  @override
  final double day;
  @override
  final double min;
  @override
  final double max;
  @override
  final double night;
  @override
  final double eve;
  @override
  final double morn;

  factory _$TemperatureModel(
          [void Function(TemperatureModelBuilder)? updates]) =>
      (new TemperatureModelBuilder()..update(updates))._build();

  _$TemperatureModel._(
      {required this.day,
      required this.min,
      required this.max,
      required this.night,
      required this.eve,
      required this.morn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(day, r'TemperatureModel', 'day');
    BuiltValueNullFieldError.checkNotNull(min, r'TemperatureModel', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'TemperatureModel', 'max');
    BuiltValueNullFieldError.checkNotNull(night, r'TemperatureModel', 'night');
    BuiltValueNullFieldError.checkNotNull(eve, r'TemperatureModel', 'eve');
    BuiltValueNullFieldError.checkNotNull(morn, r'TemperatureModel', 'morn');
  }

  @override
  TemperatureModel rebuild(void Function(TemperatureModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemperatureModelBuilder toBuilder() =>
      new TemperatureModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemperatureModel &&
        day == other.day &&
        min == other.min &&
        max == other.max &&
        night == other.night &&
        eve == other.eve &&
        morn == other.morn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, night.hashCode);
    _$hash = $jc(_$hash, eve.hashCode);
    _$hash = $jc(_$hash, morn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemperatureModel')
          ..add('day', day)
          ..add('min', min)
          ..add('max', max)
          ..add('night', night)
          ..add('eve', eve)
          ..add('morn', morn))
        .toString();
  }
}

class TemperatureModelBuilder
    implements Builder<TemperatureModel, TemperatureModelBuilder> {
  _$TemperatureModel? _$v;

  double? _day;
  double? get day => _$this._day;
  set day(double? day) => _$this._day = day;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  double? _night;
  double? get night => _$this._night;
  set night(double? night) => _$this._night = night;

  double? _eve;
  double? get eve => _$this._eve;
  set eve(double? eve) => _$this._eve = eve;

  double? _morn;
  double? get morn => _$this._morn;
  set morn(double? morn) => _$this._morn = morn;

  TemperatureModelBuilder();

  TemperatureModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _day = $v.day;
      _min = $v.min;
      _max = $v.max;
      _night = $v.night;
      _eve = $v.eve;
      _morn = $v.morn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemperatureModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemperatureModel;
  }

  @override
  void update(void Function(TemperatureModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemperatureModel build() => _build();

  _$TemperatureModel _build() {
    final _$result = _$v ??
        new _$TemperatureModel._(
            day: BuiltValueNullFieldError.checkNotNull(
                day, r'TemperatureModel', 'day'),
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'TemperatureModel', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'TemperatureModel', 'max'),
            night: BuiltValueNullFieldError.checkNotNull(
                night, r'TemperatureModel', 'night'),
            eve: BuiltValueNullFieldError.checkNotNull(
                eve, r'TemperatureModel', 'eve'),
            morn: BuiltValueNullFieldError.checkNotNull(
                morn, r'TemperatureModel', 'morn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
