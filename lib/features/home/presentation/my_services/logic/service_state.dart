import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/model/service_model.dart';

part 'service_state.freezed.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState.initial() = _Initial;
  const factory ServicesState.loading() = Loading;
  const factory ServicesState.success(List<ServiceModel> services) = Success;
  const factory ServicesState.failure(String message) = Failure;
}
