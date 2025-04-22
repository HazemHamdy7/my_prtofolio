import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/courses/widget/courses_item.dart';
import 'package:my_prtofolio/features/home/presentation/appbar/widget/app_scafflod.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScafflod(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(context.insets.padding),

          sliver: SliverGrid.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  context.mediaQuery.size.width ~/ 300 >= 3
                      ? 3
                      : context.mediaQuery.size.width ~/ 300,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) => const CoursesItem(),
          ),
        ),
      ],
    );
  }
}
