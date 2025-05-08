import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_prtofolio/features/home/presentation/courses/animation/animation_courses.dart';
import 'package:my_prtofolio/features/home/presentation/courses/logic/cubit/courses_cubit.dart';
import 'package:my_prtofolio/features/home/presentation/courses/logic/cubit/courses_state.dart';
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
                                AnimatedCoursesItem(course: courses[index]),
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

// class _AnimatedCoursesItem extends StatefulWidget {
//   final dynamic service;

//   const _AnimatedCoursesItem({required this.service});

//   @override
//   State<_AnimatedCoursesItem> createState() => _AnimatedCoursesItemState();
// }

// class _AnimatedCoursesItemState extends State<_AnimatedCoursesItem> {
//   bool _isVisible = false;

//   @override
//   Widget build(BuildContext context) {
//     return VisibilityDetector(
//       key: Key(widget.service.name), // بدل title
//       onVisibilityChanged: (info) {
//         if (info.visibleFraction > 0.2 && !_isVisible) {
//           setState(() => _isVisible = true);
//         }
//       },
//       child: TweenAnimationBuilder(
//         duration: const Duration(milliseconds: 3000),
//         tween: Tween<double>(begin: 0.0, end: _isVisible ? 1.0 : 0.0),
//         curve: Curves.easeOutCubic,
//         builder: (context, value, child) {
//           return Transform.translate(
//             offset: Offset(0, 30 * (1 - value)),
//             child: Opacity(
//               opacity: value,
//               child: CoursesItem(course: widget.service),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
