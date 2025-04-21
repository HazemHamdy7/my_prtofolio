import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/courses/widget/home_title_subtitle.dart';
import 'package:my_prtofolio/features/experienes/widget/desktop_experienes_body.dart';
import 'package:my_prtofolio/features/experienes/widget/experence_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';

class ExperienesBody extends StatelessWidget {
  const ExperienesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: context.texts.experienes,
          subtitle: context.texts.experienes_subtitle,
        ),
        Gap(32),
        context.isDesktop
            ? const DesktopExperienesBody()
            : const MobileExperienesBody(),
      ],
    );
  }
}

class MobileExperienesBody extends StatelessWidget {
  const MobileExperienesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          ExperenceItem(),
          SizedBox(
            height: 60,
            child: DottedLine(
              dashColor: Colors.white,
              direction: Axis.vertical,
            ),
          ),
          ExperenceItem(),
          SizedBox(
            height: 60,
            child: DottedLine(
              dashColor: Colors.white,
              direction: Axis.vertical,
            ),
          ),
          ExperenceItem(),
          SizedBox(
            height: 60,
            child: DottedLine(
              dashColor: Colors.white,
              direction: Axis.vertical,
            ),
          ),
          ExperenceItem(),
        ],
      ),
    );
  }
}
