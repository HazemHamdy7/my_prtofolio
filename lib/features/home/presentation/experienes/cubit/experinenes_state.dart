import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_prtofolio/features/home/presentation/experienes/model/experiences.dart';

part 'experinenes_state.freezed.dart';

@freezed
class ExperinenesState with _$ExperinenesState {
  const factory ExperinenesState.initial() = _Initial;

  const factory ExperinenesState.loading() = Loading;
  const factory ExperinenesState.loaded({
    required List<Experiences> experiences,
  }) = Loaded;
  const factory ExperinenesState.error({required String message}) = Error;
}
