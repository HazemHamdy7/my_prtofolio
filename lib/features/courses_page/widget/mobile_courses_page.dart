import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/home/presentation/courses/animation/animation_courses.dart';
import 'package:my_prtofolio/features/home/presentation/courses/logic/cubit/courses_cubit.dart';
import 'package:my_prtofolio/features/home/presentation/courses/logic/cubit/courses_state.dart';
import 'package:my_prtofolio/shared/appbar/widget/app_scafflod.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class MobileExperiencesPage extends StatelessWidget {
  const MobileExperiencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoursesCubit()..fetchCourses(),
      child: AppScafflod(
        slivers: [
          BlocBuilder<CoursesCubit, CoursesState>(
            builder: (context, state) {
              if (state is CoursesLoading) {
                return const SliverToBoxAdapter(
                  child: Center(child: CircularProgressIndicator()),
                );
              } else if (state is CoursesLoaded) {
                return SliverPadding(
                  padding:
                      context.isDesktop || context.isTablet
                          ? EdgeInsets.all(context.insets.padding)
                          : EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: context.insets.gap,
                          ),

                  sliver: SliverList.separated(
                    itemCount: state.courses.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 24),
                    itemBuilder: (context, index) {
                      return Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 350),
                          child: AnimatedCoursesItem(
                            course: state.courses[index],
                          ),
                        ),
                      );
                    },
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
