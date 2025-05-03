import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/courses/animation/animation_courses.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_cubit.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_state.dart';
 import 'package:my_prtofolio/shared/appbar/widget/app_scafflod.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class DeskTopCoursesPage extends StatelessWidget {
  const DeskTopCoursesPage({super.key});

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
                return SliverPadding(
                  padding: EdgeInsets.all(context.insets.padding),
                  sliver: SliverGrid.builder(
                    itemCount: state.courses.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 24,
                          mainAxisSpacing: 24,
                          childAspectRatio: 0.8,
                        ),
                    itemBuilder:
                        (context, index) =>
                            AnimatedCoursesItem(course: state.courses[index]),
                  ),
                );
              } else if (state is CoursesError) {
                return SliverToBoxAdapter(
                  child: Center(child: Text('Error: ${state.message}')),
                );
              } else {
                return const SliverToBoxAdapter(
                  child: Center(child: Text('No Data')),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
