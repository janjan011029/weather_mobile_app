part of 'weather_bloc.dart';

class WeatherState extends Equatable {
  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherEmpty extends WeatherState {}

final class WeatherLoaded extends WeatherState {
  WeatherLoaded({
    required this.result,
  });

  final WeatherApiResultModel result;

  @override
  List<Object> get props => [result];

  WeatherLoaded copyWith({
    WeatherApiResultModel? result,
  }) {
    return WeatherLoaded(
      result: result ?? this.result,
    );
  }
}

final class WeatherError extends WeatherState {
  WeatherError({required this.errMessage});
  final String errMessage;

  @override
  List<Object> get props => [errMessage];
}
