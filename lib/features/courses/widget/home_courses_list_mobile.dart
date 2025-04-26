import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_cubit.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_state.dart';
import 'package:my_prtofolio/features/courses/widget/courses_item.dart';

class HomeCoursesListMobile extends StatelessWidget {
  HomeCoursesListMobile({super.key});
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoursesCubit()..fetchCourses(),
      child: BlocBuilder<CoursesCubit, CoursesState>(
        builder: (context, state) {
          if (state is CoursesInitial) {
            return const Center(child: Text('Initializing...'));
          } else if (state is CoursesLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CoursesLoaded) {
            final courses = state.courses;

            return ListView.builder(
              controller: scrollController,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: courses.length,
              itemBuilder:
                  (context, index) => Padding(
                    padding: const EdgeInsets. all(15.0),
                    child: CoursesItem(course: courses[index]),
                  ),
            );
          } else if (state is CoursesError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return const Center(child: Text('Unknown state'));
        },
      ),
    );
  }
}
