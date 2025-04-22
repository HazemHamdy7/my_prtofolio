import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/courses/widget/courses_item.dart';

class HomeCoursesListMobile extends StatelessWidget {
  HomeCoursesListMobile({super.key});
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scrollbar(
        controller: scrollController,
        thumbVisibility: true,
        child: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.horizontal,

          child: Row(
            children: [
              SizedBox(width: 240, child: const CoursesItem()),
              SizedBox(width: 240, child: const CoursesItem()),
              SizedBox(width: 240, child: const CoursesItem()),
              SizedBox(width: 240, child: const CoursesItem()),
            ],
          ),
        ),
      ),
    );
  }
}
