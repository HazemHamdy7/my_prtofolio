import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_cubit.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_state.dart';

import 'package:my_prtofolio/features/courses/widget/courses_item.dart';
import 'package:my_prtofolio/features/home/presentation/appbar/widget/app_scafflod.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoursesCubit()..fetchCourses(),
      child: AppScafflod(
        slivers: [
          BlocBuilder<CoursesCubit, CoursesState>(
            builder: (context, state) {
              if (state is CoursesInitial) {
                return const SliverToBoxAdapter(
                  child: Center(child: Text('Initializing...')),
                );
              } else if (state is CoursesLoading) {
                return const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                );
              } else if (state is CoursesLoaded) {
                final courses = (state).courses;
                return SliverPadding(
                  padding: EdgeInsets.all(context.insets.padding),
                  sliver: SliverGrid.builder(
                    itemCount: courses.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              3, // Adjust for responsiveness if needed
                          crossAxisSpacing: 24,
                          mainAxisSpacing: 24,
                          childAspectRatio: 0.8,
                        ),
                    itemBuilder:
                        (context, index) => CoursesItem(course: courses[index]),
                  ),
                );
              } else if (state is CoursesError) {
                final message = (state).message;
                return SliverToBoxAdapter(
                  child: Center(child: Text('Error: $message')),
                );
              }
              // Fallback for unexpected states
              return const SliverToBoxAdapter(
                child: Center(child: Text('Unknown state')),
              );
            },
          ),
        ],
      ),
    );
  }
}
