import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_cubit.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_state.dart';
import 'package:my_prtofolio/features/courses/widget/courses_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class HomeCoursesListDesktop extends StatelessWidget {
  const HomeCoursesListDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: BlocProvider(
        create: (context) => CoursesCubit()..fetchCourses(),
        child: BlocBuilder<CoursesCubit, CoursesState>(
          builder: (context, state) {
            if (state is CoursesInitial) {
              return const Center(child: Text('Initializing...'));
            } else if (state is CoursesLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CoursesLoaded) {
              final courses = state.courses;
              return SizedBox(
                height: context.mediaQuery.size.height * 0.6,
                child: CustomScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: ScrollController(),
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsets.all(context.insets.padding),
                      sliver: SliverGrid.builder(
                        itemCount: state.courses.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: courses.length,
                          crossAxisSpacing: 24,
                          mainAxisSpacing: 24,
                          childAspectRatio: 0.9,
                        ),
                        itemBuilder:
                            (context, index) =>
                                CoursesItem(course: state.courses[index]),
                      ),
                    ),
                  ],
                ),
              );
            } else if (state is CoursesError) {
              final message = state.message;
              return Center(child: Text('Error: $message'));
            }
            return const Center(child: Text('Unexpected state'));
          },
        ),
      ),
    );
  }
}
