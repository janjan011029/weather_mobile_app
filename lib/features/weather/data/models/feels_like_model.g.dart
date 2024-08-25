// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feels_like_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeelsLikeModel> _$feelsLikeModelSerializer =
    new _$FeelsLikeModelSerializer();

class _$FeelsLikeModelSerializer
    implements StructuredSerializer<FeelsLikeModel> {
  @override
  final Iterable<Type> types = const [FeelsLikeModel, _$FeelsLikeModel];
  @override
  final String wireName = 'FeelsLikeModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, FeelsLikeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'day',
      serializers.serialize(object.day, specifiedType: const FullType(double)),
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
  FeelsLikeModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeelsLikeModelBuilder();

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

class _$FeelsLikeModel extends FeelsLikeModel {
  @override
  final double day;
  @override
  final double night;
  @override
  final double eve;
  @override
  final double morn;

  factory _$FeelsLikeModel([void Function(FeelsLikeModelBuilder)? updates]) =>
      (new FeelsLikeModelBuilder()..update(updates))._build();

  _$FeelsLikeModel._(
      {required this.day,
      required this.night,
      required this.eve,
      required this.morn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(day, r'FeelsLikeModel', 'day');
    BuiltValueNullFieldError.checkNotNull(night, r'FeelsLikeModel', 'night');
    BuiltValueNullFieldError.checkNotNull(eve, r'FeelsLikeModel', 'eve');
    BuiltValueNullFieldError.checkNotNull(morn, r'FeelsLikeModel', 'morn');
  }

  @override
  FeelsLikeModel rebuild(void Function(FeelsLikeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeelsLikeModelBuilder toBuilder() =>
      new FeelsLikeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeelsLikeModel &&
        day == other.day &&
        night == other.night &&
        eve == other.eve &&
        morn == other.morn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, night.hashCode);
    _$hash = $jc(_$hash, eve.hashCode);
    _$hash = $jc(_$hash, morn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeelsLikeModel')
          ..add('day', day)
          ..add('night', night)
          ..add('eve', eve)
          ..add('morn', morn))
        .toString();
  }
}

class FeelsLikeModelBuilder
    implements Builder<FeelsLikeModel, FeelsLikeModelBuilder> {
  _$FeelsLikeModel? _$v;

  double? _day;
  double? get day => _$this._day;
  set day(double? day) => _$this._day = day;

  double? _night;
  double? get night => _$this._night;
  set night(double? night) => _$this._night = night;

  double? _eve;
  double? get eve => _$this._eve;
  set eve(double? eve) => _$this._eve = eve;

  double? _morn;
  double? get morn => _$this._morn;
  set morn(double? morn) => _$this._morn = morn;

  FeelsLikeModelBuilder();

  FeelsLikeModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _day = $v.day;
      _night = $v.night;
      _eve = $v.eve;
      _morn = $v.morn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeelsLikeModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeelsLikeModel;
  }

  @override
  void update(void Function(FeelsLikeModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeelsLikeModel build() => _build();

  _$FeelsLikeModel _build() {
    final _$result = _$v ??
        new _$FeelsLikeModel._(
            day: BuiltValueNullFieldError.checkNotNull(
                day, r'FeelsLikeModel', 'day'),
            night: BuiltValueNullFieldError.checkNotNull(
                night, r'FeelsLikeModel', 'night'),
            eve: BuiltValueNullFieldError.checkNotNull(
                eve, r'FeelsLikeModel', 'eve'),
            morn: BuiltValueNullFieldError.checkNotNull(
                morn, r'FeelsLikeModel', 'morn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
