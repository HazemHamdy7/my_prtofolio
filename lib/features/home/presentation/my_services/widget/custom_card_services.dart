import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:my_prtofolio/shared/style/app_colors.dart';

class CustomCardServices extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String buttonTitle;
  const CustomCardServices({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.buttonTitle = "See More",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        // color: context.colorScheme.background,
        border: Border.all(color: context.colorScheme.outline),
      ),
      child: Card(
        borderOnForeground: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 20,
        shadowColor: Colors.blue.withOpacity(0.9),
        color: context.colorScheme.background,

        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,

                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  color: AppColors.primaryColor,
                ),
              ),
              Gap(16),

              SEOText(
                title,
                style: context.textStyle.bodyleLgBold.copyWith(
                  color: context.colorScheme.onBackground,
                ),
              ),
              Gap(10),

              SEOText(
                description,
                maxLines: 4,
                style: context.textStyle.bodyMdMedium.copyWith(
                  color: context.colorScheme.onBackground,
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

            // color: Colors.teal.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            color: AppColors.primaryColor,

            // color: const Color.fromARGB(255, 6, 226, 179).withOpacity(0.3),
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
