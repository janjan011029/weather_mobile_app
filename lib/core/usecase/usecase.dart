import 'package:fpdart/fpdart.dart';
import 'package:weather_mobile_app/core/error/failure.dart';

abstract interface class UseCase<SuccessfulType, Params> {
  Future<Either<Failure, SuccessfulType>> call(Params params);
}

class NoParams {}