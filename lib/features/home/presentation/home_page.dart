import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/shared/appbar/widget/app_scafflod.dart';
import 'package:my_prtofolio/features/home/presentation/courses/widget/home_courses_list.dart';
import 'package:my_prtofolio/features/home/presentation/courses/widget/home_title_subtitle.dart';
import 'package:my_prtofolio/features/home/presentation/experienes/presentation/experienes_body.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/presentation/services_page.dart';
import 'package:my_prtofolio/features/home/widget/hero_widget.dart';
import 'package:my_prtofolio/features/testimonil/testimonil_list.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScafflod(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
            child: HeroWidget(),
          ),
        ),
        SliverGap(context.insets.gap),
        SliverToBoxAdapter(child: HomeCoursesList()),
        SliverGap(context.insets.gap),
        SliverToBoxAdapter(child: ExperienesBody()),
        SliverGap(context.insets.gap),
        SliverToBoxAdapter(child: ServicesPage()),
        SliverGap(context.insets.gap),

        SliverToBoxAdapter(
          child: HomeTitleSubtitle(
            title: context.texts.testimonials,
            subtitle: context.texts.testimonials_subtitle,
          ),
        ),
        SliverGap(32),

        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
          sliver: TestimonilList(),
        ),
        SliverGap(context.insets.gap),
      ],
    );
  }
}
