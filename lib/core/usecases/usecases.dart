// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

// 🌎 Project imports:
import 'package:defifundr_mobile/core/network/api_error.dart';

abstract class UseCase<Type, Params> {
  Future<Either<ApiError, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
