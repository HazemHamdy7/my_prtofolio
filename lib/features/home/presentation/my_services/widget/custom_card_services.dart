import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/constants/assets.dart';
import 'package:my_prtofolio/features/home/presentation/my_services/model/service_model.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/helper/font_size_responsive.dart';
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
    List<String> images = [
      Assets.imagesCode2,
      Assets.imagesCode,
      Assets.imagesComputer,
    ];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: context.colorScheme.outline),
      ),
      child: Card(
        borderOnForeground: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20,
        shadowColor: Colors.blue.withValues(alpha: 0.9),
        color: context.colorScheme.onSurface,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 50,
                height: 50, // الحجم المناسب للعرض
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10,
                      shadowColor: Colors.blue.withValues(alpha: 0.5),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          images[index], // استخدام الصورة بناءً على التكرار
                          width: double.infinity,
                          height: 100, // تعديل الحجم حسب ما يناسبك
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
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
                  fontSize: getResponsiveFontSize(context, fontSize: 20),
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.onSurface,
                ),
              ),

              Gap(10),
              SEOText(
                serviceModel.description[Localizations.localeOf(
                      context,
                    ).languageCode] ??
                    serviceModel.description['en'] ??
                    '', // التأكد من الوصول بشكل صحيح للمفتاح 'en'
                maxLines: 4,
                style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 10),
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.onSurface,
                ),
              ),

              Gap(16),
              _CustomButtonCard(onPressed: () {}, buttonTitle: buttonTitle),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomButtonCard extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonTitle;
  const _CustomButtonCard({this.onPressed, this.buttonTitle = "See More"});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryColor,

        // color: const Color.fromARGB(255, 6, 226, 179),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor,

            // color: Colors.teal.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: AppColors.primaryColor,

            // color: const Color.fromARGB(255, 6, 226, 179).withValues(alpha: 0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(buttonTitle, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
