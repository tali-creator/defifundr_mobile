import 'package:dartz/dartz.dart';
import 'package:defifundr_mobile/core/network/api_error.dart';
import 'package:defifundr_mobile/core/usecases/usecases.dart';
import 'package:defifundr_mobile/features/home/domain/entities/campaigns/campaigns_entity.dart';
import 'package:defifundr_mobile/features/home/domain/repositories/campaign_repository.dart';


class GetMyCampaignsUseCase implements UseCase<CampaignResponse, NoParams> {
  final CampaignRepository campaignRepository;

  GetMyCampaignsUseCase(this.campaignRepository);

  @override
  Future<Either<ApiError, CampaignResponse>> call(NoParams params) async {
    return await campaignRepository.getMyCampaigns();
  }
}
