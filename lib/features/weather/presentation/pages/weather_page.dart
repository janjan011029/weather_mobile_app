import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_mobile_app/core/config/get_it.dart';
import 'package:weather_mobile_app/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_mobile_app/features/weather/presentation/widgets/child_weather.dart';
import 'package:weather_mobile_app/features/weather/presentation/widgets/custom_button.dart';
import 'package:weather_mobile_app/features/weather/presentation/widgets/weather_header.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = sl<WeatherBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          key: Key('pinIconKey'),
          'Click the Pin Icon to Fetch Weather',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        actions: [
          InkWell(
            onTap: () => bloc.add(GetWeatherEvent()),
            child: const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.pin_drop,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: BlocBuilder<WeatherBloc, WeatherState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is WeatherLoading) {
            return const Center(
              key: Key('centerLoadingKey'),
              child: CircularProgressIndicator(),
            );
          }

          if (state is WeatherError) {
            return Center(
              key: const Key('centerErrorKey'),
              child: Text(state.errMessage),
            );
          }

          if (state is WeatherEmpty) {
            return const Center(child: Text('No data found.'));
          }

          if (state is WeatherLoaded) {
            final weather = state.result;
            final current = weather.current;
            final icon = current.weather.first.icon;

            return Column(
              children: [
                WeatherWidget(
                  key: const Key('weatherResultKey'),
                  imageUrl: 'https://openweathermap.org/img/wn/$icon@2x.png',
                  dewPoint: current.dewPoint,
                  feelsLike: current.feelsLike,
                  humidity: current.humidity,
                  temp: current.temp,
                  timezone: weather.timezone,
                  uvi: current.uvi,
                  visibility: current.visibility,
                ),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: weather.daily.length,
                    itemBuilder: (context, index) {
                      final day = weather.daily[index];
                      final icon2 = day.weather.first.icon;

                      return Column(
                        children: [
                          WeatherListTile(
                            imageUrl:
                                'https://openweathermap.org/img/wn/$icon2@2x.png',
                            index: index + 1,
                            max: day.temp.max,
                            min: day.temp.min,
                            weatherDescription: day.weather.first.description,
                          ),
                          const Divider(),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          }

          return Center(
            child: CustomButton(
              key: const Key('getWeatherKey'),
              onTap: () => bloc.add(GetWeatherEvent()),
              title: 'Get Updated Weather',
            ),
          );
        },
      )),
    );
  }
}
