import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/constants/assets.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/model/service_model.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/helper/font_size_responsive.dart';
import 'package:my_prtofolio/helper/url_launcher.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:my_prtofolio/shared/style/app_colors.dart';

class CustomCardServices extends StatelessWidget {
  final String buttonTitle;
  final ServiceModel serviceModel;

  const CustomCardServices({
    super.key,
    required this.serviceModel,
    this.buttonTitle = "See More",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: context.colorScheme.outline),
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20,
        shadowColor: Colors.blue.withValues(alpha: 0.9),
        color: context.colorScheme.surface,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Service image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: double.infinity,
                  height: 110,
                  child: _buildServiceImage(),
                ),
              ),

              Gap(10),
              SEOText(
                serviceModel.title[Localizations.localeOf(
                      context,
                    ).languageCode] ??
                    serviceModel.title['en'] ??
                    '',
                style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 16),
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.secondary,
                ),
              ),
              Gap(6),
              SEOText(
                serviceModel.description[Localizations.localeOf(
                      context,
                    ).languageCode] ??
                    serviceModel.description['en'] ??
                    '',
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 8),
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
              Gap(10),
              _CustomButtonCard(
                onPressed: () async {
                  await openUrlOnTap(context: context, url: serviceModel.url);
                },
                buttonTitle: buttonTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildServiceImage() {
    return Image.asset(
      serviceModel.images,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Center(child: Image.asset(Assets.imagesDart));
      },
    );
  }
}

class _CustomButtonCard extends StatelessWidget {
  final Future<void> Function()? onPressed;
  final String buttonTitle;
  const _CustomButtonCard({this.onPressed, this.buttonTitle = "See More"});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.5),
            spreadRadius: 2,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(buttonTitle, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
