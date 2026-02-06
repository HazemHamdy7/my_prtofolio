import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/home/presentation/courses/logic/cubit/courses_state.dart';
import 'package:my_prtofolio/features/home/presentation/courses/model/course.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesInitial());

  // Local image URLs in order
  final List<String> _localImages = [
    'assets/images/dart.png',
    'assets/images/code2.png',
    'assets/images/code3.png',
  ];

  Future<void> fetchCourses() async {
    try {
      emit(CoursesLoading());
      final querySnapshot =
          await FirebaseFirestore.instance.collection('courses').get();

      // Get courses from Firebase with local images
      final courses = <Course>[];
      for (int i = 0; i < querySnapshot.docs.length; i++) {
        final courseData = Course.fromJson(querySnapshot.docs[i].data());
        final localImage = _localImages[i % _localImages.length];

        // Create new course with local image
        final updatedCourse = Course(
          name: courseData.name,
          imageUrl: localImage,
          description: courseData.description,
          link: courseData.link,
        );
        courses.add(updatedCourse);
      }

      emit(CoursesLoaded(courses: courses));
    } catch (e) {
      emit(CoursesError(message: e.toString()));
    }
  }
}
