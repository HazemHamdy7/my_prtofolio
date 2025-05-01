import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_cubit.dart';
import 'package:my_prtofolio/features/courses/logic/cubit/courses_state.dart';
import 'package:my_prtofolio/features/courses/widget/courses_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

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

            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 400),
                child: ListView.builder(
                  controller: scrollController,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: courses.length,
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: _AnimatedServiceItem(service: courses[index]),
                      ),
                ),
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

class _AnimatedServiceItem extends StatefulWidget {
  final dynamic service;

  const _AnimatedServiceItem({required this.service});

  @override
  State<_AnimatedServiceItem> createState() => _AnimatedServiceItemState();
}

class _AnimatedServiceItemState extends State<_AnimatedServiceItem> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.service.name), // بدل title
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 1500),
        tween: Tween<double>(begin: 0.0, end: _isVisible ? 1.0 : 0.0),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(0, 30 * (1 - value)),
            child: Opacity(
              opacity: value,
              child: CoursesItem(course: widget.service),
            ),
          );
        },
      ),
    );
  }
}
