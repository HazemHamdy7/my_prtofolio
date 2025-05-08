import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/constants/app_strings.dart';
import 'package:my_prtofolio/shared/download_cv_button.dart';
import 'package:my_prtofolio/features/home/widget/style_button.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/style/app_size.dart';

class LargeHeroButtons extends StatelessWidget {
  const LargeHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            PrimaryButton(title: context.texts.courses),
            Gap(Insets.sm),
            OutLineButton(title: context.texts.contact_me),
          ],
        ),
        DownloadCVButton(fileUrl: AppStringS.cvUrl, fileName: "cv.pdf"),
      ],
    );
  }
}
