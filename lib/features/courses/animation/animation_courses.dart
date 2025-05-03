import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/courses/widget/courses_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimatedCoursesItem extends StatefulWidget {
  final dynamic course;

  const AnimatedCoursesItem({super.key, required this.course});

  @override
  State<AnimatedCoursesItem> createState() => _AnimatedCoursesItemState();
}

class _AnimatedCoursesItemState extends State<AnimatedCoursesItem> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.course.name), // بدل title
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
              child: CoursesItem(course: widget.course),
            ),
          );
        },
      ),
    );
  }
}
