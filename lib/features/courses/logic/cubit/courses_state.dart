import 'package:my_prtofolio/features/courses/model/course.dart';

sealed class CoursesState {}

final class CoursesInitial extends CoursesState {}

final class CoursesLoading extends CoursesState {}

final class CoursesLoaded extends CoursesState {
  final List<Course> courses;

  CoursesLoaded({required this.courses});
}

final class CoursesError extends CoursesState {
  final String message;

  CoursesError(this.message);
}

final class CoursesEmpty extends CoursesState {}
