import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/style/app_colors.dart';

class PoweredByFlutter extends StatelessWidget {
  const PoweredByFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Flutter logo
          Image.asset(
            'assets/images/flutter_logo.png',
            width: 24,
            height: 24,
            color: AppColors.primaryColor,
          ),
          Gap(8),
          Text(
            context.texts.powred_by_flutter,
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
