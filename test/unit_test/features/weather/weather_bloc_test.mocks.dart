// Mocks generated by Mockito 5.4.4 from annotations
// in weather_mobile_app/test/unit_test/features/weather/weather_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:built_collection/built_collection.dart' as _i5;
import 'package:fpdart/fpdart.dart' as _i11;
import 'package:geolocator/geolocator.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i13;
import 'package:weather_mobile_app/core/error/failure.dart' as _i12;
import 'package:weather_mobile_app/core/location/current_location.dart' as _i7;
import 'package:weather_mobile_app/core/permission/app_permission.dart' as _i9;
import 'package:weather_mobile_app/features/weather/data/models/current_model.dart'
    as _i4;
import 'package:weather_mobile_app/features/weather/data/models/daily_model.dart'
    as _i14;
import 'package:weather_mobile_app/features/weather/data/models/weather_api_result_model.dart'
    as _i6;
import 'package:weather_mobile_app/features/weather/domain/repository/weather_repository.dart'
    as _i3;
import 'package:weather_mobile_app/features/weather/domain/usecases/get_current_weather.dart'
    as _i10;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakePosition_0 extends _i1.SmartFake implements _i2.Position {
  _FakePosition_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWeatherRepository_1 extends _i1.SmartFake
    implements _i3.WeatherRepository {
  _FakeWeatherRepository_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCurrentModel_2 extends _i1.SmartFake implements _i4.CurrentModel {
  _FakeCurrentModel_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBuiltList_3<E> extends _i1.SmartFake implements _i5.BuiltList<E> {
  _FakeBuiltList_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWeatherApiResultModel_4 extends _i1.SmartFake
    implements _i6.WeatherApiResultModel {
  _FakeWeatherApiResultModel_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWeatherApiResultModelBuilder_5 extends _i1.SmartFake
    implements _i6.WeatherApiResultModelBuilder {
  _FakeWeatherApiResultModelBuilder_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [LocationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocationService extends _i1.Mock implements _i7.LocationService {
  @override
  _i8.Future<_i2.Position> getCurrentPosition() => (super.noSuchMethod(
        Invocation.method(
          #getCurrentPosition,
          [],
        ),
        returnValue: _i8.Future<_i2.Position>.value(_FakePosition_0(
          this,
          Invocation.method(
            #getCurrentPosition,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i8.Future<_i2.Position>.value(_FakePosition_0(
          this,
          Invocation.method(
            #getCurrentPosition,
            [],
          ),
        )),
      ) as _i8.Future<_i2.Position>);
}

/// A class which mocks [PermissionService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPermissionService extends _i1.Mock implements _i9.PermissionService {
  @override
  _i8.Future<bool> locationPermission() => (super.noSuchMethod(
        Invocation.method(
          #locationPermission,
          [],
        ),
        returnValue: _i8.Future<bool>.value(false),
        returnValueForMissingStub: _i8.Future<bool>.value(false),
      ) as _i8.Future<bool>);
}

/// A class which mocks [GetCurrentWeather].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetCurrentWeather extends _i1.Mock implements _i10.GetCurrentWeather {
  @override
  _i3.WeatherRepository get weatherRepository => (super.noSuchMethod(
        Invocation.getter(#weatherRepository),
        returnValue: _FakeWeatherRepository_1(
          this,
          Invocation.getter(#weatherRepository),
        ),
        returnValueForMissingStub: _FakeWeatherRepository_1(
          this,
          Invocation.getter(#weatherRepository),
        ),
      ) as _i3.WeatherRepository);

  @override
  _i8.Future<_i11.Either<_i12.Failure, _i6.WeatherApiResultModel>> call(
          _i10.GetCurrentWeatherParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i8
            .Future<_i11.Either<_i12.Failure, _i6.WeatherApiResultModel>>.value(
            _i13.dummyValue<
                _i11.Either<_i12.Failure, _i6.WeatherApiResultModel>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub: _i8
            .Future<_i11.Either<_i12.Failure, _i6.WeatherApiResultModel>>.value(
            _i13.dummyValue<
                _i11.Either<_i12.Failure, _i6.WeatherApiResultModel>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i8.Future<_i11.Either<_i12.Failure, _i6.WeatherApiResultModel>>);
}

/// A class which mocks [WeatherApiResultModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeatherApiResultModel extends _i1.Mock
    implements _i6.WeatherApiResultModel {
  @override
  double get lat => (super.noSuchMethod(
        Invocation.getter(#lat),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);

  @override
  double get lon => (super.noSuchMethod(
        Invocation.getter(#lon),
        returnValue: 0.0,
        returnValueForMissingStub: 0.0,
      ) as double);

  @override
  String get timezone => (super.noSuchMethod(
        Invocation.getter(#timezone),
        returnValue: _i13.dummyValue<String>(
          this,
          Invocation.getter(#timezone),
        ),
        returnValueForMissingStub: _i13.dummyValue<String>(
          this,
          Invocation.getter(#timezone),
        ),
      ) as String);

  @override
  int get timezoneOffset => (super.noSuchMethod(
        Invocation.getter(#timezoneOffset),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  _i4.CurrentModel get current => (super.noSuchMethod(
        Invocation.getter(#current),
        returnValue: _FakeCurrentModel_2(
          this,
          Invocation.getter(#current),
        ),
        returnValueForMissingStub: _FakeCurrentModel_2(
          this,
          Invocation.getter(#current),
        ),
      ) as _i4.CurrentModel);

  @override
  _i5.BuiltList<_i14.DailyModel> get daily => (super.noSuchMethod(
        Invocation.getter(#daily),
        returnValue: _FakeBuiltList_3<_i14.DailyModel>(
          this,
          Invocation.getter(#daily),
        ),
        returnValueForMissingStub: _FakeBuiltList_3<_i14.DailyModel>(
          this,
          Invocation.getter(#daily),
        ),
      ) as _i5.BuiltList<_i14.DailyModel>);

  @override
  Map<String, dynamic> toJson() => (super.noSuchMethod(
        Invocation.method(
          #toJson,
          [],
        ),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  _i6.WeatherApiResultModel rebuild(
          dynamic Function(_i6.WeatherApiResultModelBuilder)? updates) =>
      (super.noSuchMethod(
        Invocation.method(
          #rebuild,
          [updates],
        ),
        returnValue: _FakeWeatherApiResultModel_4(
          this,
          Invocation.method(
            #rebuild,
            [updates],
          ),
        ),
        returnValueForMissingStub: _FakeWeatherApiResultModel_4(
          this,
          Invocation.method(
            #rebuild,
            [updates],
          ),
        ),
      ) as _i6.WeatherApiResultModel);

  @override
  _i6.WeatherApiResultModelBuilder toBuilder() => (super.noSuchMethod(
        Invocation.method(
          #toBuilder,
          [],
        ),
        returnValue: _FakeWeatherApiResultModelBuilder_5(
          this,
          Invocation.method(
            #toBuilder,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeWeatherApiResultModelBuilder_5(
          this,
          Invocation.method(
            #toBuilder,
            [],
          ),
        ),
      ) as _i6.WeatherApiResultModelBuilder);
}
