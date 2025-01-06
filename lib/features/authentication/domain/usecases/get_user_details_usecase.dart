import 'package:dartz/dartz.dart';
import 'package:defifundr_mobile/core/network/api_error.dart';
import 'package:defifundr_mobile/core/usecases/usecases.dart';
import 'package:defifundr_mobile/features/authentication/domain/entities/login_entity/login_response_entity.dart';
import 'package:defifundr_mobile/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class GetUserDetailsUsecase
    implements UseCase<UserResponse, NoParams> {
  final AuthenticationRepository authenticationRepository;

  GetUserDetailsUsecase(this.authenticationRepository);

  @override
  Future<Either<ApiError, UserResponse>> call(NoParams params) async {
    return await authenticationRepository.getUserDetails();
  }
}

