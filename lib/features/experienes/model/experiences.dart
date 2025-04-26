import 'package:freezed_annotation/freezed_annotation.dart';
part 'experiences.freezed.dart';
part 'experiences.g.dart';

@freezed
abstract class Experiences with _$Experiences {
  const factory Experiences({
    required Map<String, String> title,
    required Map<String, String> description,
  }) = _Experiences;

  factory Experiences.fromJson(Map<String, dynamic> json) =>
      _$ExperiencesFromJson(json);
}
