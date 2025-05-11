import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/helper/font_size_responsive.dart';
import 'package:my_prtofolio/shared/style/app_colors.dart';

class CustomFeatureItem extends StatelessWidget {
  final String text;

  const CustomFeatureItem({super.key, required this.text});

  Widget _getIcon(String tool) {
    switch (tool.toLowerCase()) {
      case 'flutter':
        return const FaIcon(
          FontAwesomeIcons.flutter,
          size: 14,
          color: Colors.white,
        );
      case 'firebase':
        return const FaIcon(
          FontAwesomeIcons.fire,
          size: 14,
          color: Colors.white,
        );
      case 'bloc':
        return const FaIcon(
          FontAwesomeIcons.gears,
          size: 14,
          color: Colors.white,
        );
      case 'provider':
        return const FaIcon(
          FontAwesomeIcons.diagramProject,
          size: 14,
          color: Colors.white,
        );
      case 'dio':
        return const FaIcon(
          FontAwesomeIcons.networkWired,
          size: 14,
          color: Colors.white,
        );
      case 'rest api':
        return const FaIcon(
          FontAwesomeIcons.plug,
          size: 14,
          color: Colors.white,
        );
      case 'tmdb api':
        return const FaIcon(
          FontAwesomeIcons.film,
          size: 14,
          color: AppColors.primaryColor,
        );
      case 'getx':
        return const FaIcon(
          FontAwesomeIcons.toolbox,
          size: 14,
          color: AppColors.primaryColor,
        );
      default:
        return const FaIcon(
          FontAwesomeIcons.code,
          size: 14,
          color: AppColors.primaryColor,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: text,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: AppColors.darkBackgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _getIcon(text),
            const Gap(10),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: getResponsiveFontSize(context, fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
