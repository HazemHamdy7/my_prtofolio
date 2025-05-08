import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_prtofolio/features/home/presentation/courses/model/course.dart';

part 'courses_state.freezed.dart';

@freezed
class CoursesState with _$CoursesState {
  const factory CoursesState.initial() = CoursesInitial;
  const factory CoursesState.loading() = CoursesLoading;
  const factory CoursesState.loaded({required List<Course> courses}) =
      CoursesLoaded;
  const factory CoursesState.error({required String message}) = CoursesError;
}
