import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/appbar/my_app_bar.dart';
import 'package:my_prtofolio/features/courses/home_courses_list.dart';
import 'package:my_prtofolio/features/experienes/experienes_body.dart';
import 'package:my_prtofolio/features/home/widget/background_blur.dart';
import 'package:my_prtofolio/features/home/widget/hero_widget.dart';
import 'package:my_prtofolio/features/testimonil/testimonil_list.dart';
import 'package:my_prtofolio/style/app_size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundBlur(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              constraints: BoxConstraints(maxWidth: Insets.maxWidth),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: HeroWidget()),
                  SliverToBoxAdapter(child: HomeCoursesList()),
                  SliverToBoxAdapter(child: ExperienesBody()),
                  TestimonilList(),
                ],
              ),
            ),
          ),

          const MyAppBar(),
        ],
      ),
    );
  }
}
