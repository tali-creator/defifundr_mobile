import 'package:dartz/dartz.dart';
import 'package:defifundr_mobile/core/network/api_error.dart';
import 'package:defifundr_mobile/core/usecases/usecases.dart';
import 'package:defifundr_mobile/features/authentication/domain/entities/base_entity/base_entity.dart';
import 'package:defifundr_mobile/features/profile/domain/repositories/profile_repository.dart';
import 'package:equatable/equatable.dart';

class SetBiometricsUsecase implements UseCase<BaseEntity, BiometricsParams> {
  final ProfileRepository profileRepository;

  SetBiometricsUsecase(this.profileRepository);

  @override
  Future<Either<ApiError, BaseEntity>> call(BiometricsParams params) async {
    return await profileRepository.setBiometrics(
        isBiometrics: params.biometrics);
  }
}

class BiometricsParams extends Equatable {
  final bool biometrics;

  const BiometricsParams({
    required this.biometrics,
  });

  @override
  List<Object> get props => [biometrics];
}
