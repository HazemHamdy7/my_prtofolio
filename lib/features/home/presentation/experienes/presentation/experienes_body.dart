import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/presentation/courses/widget/home_title_subtitle.dart';
 import 'package:my_prtofolio/features/home/presentation/experienes/widget/desktop_experienes_body.dart';
import 'package:my_prtofolio/features/home/presentation/experienes/widget/mobile_experienes_body.dart';
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
