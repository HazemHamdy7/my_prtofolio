import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_prtofolio/features/home/widget/style_button.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/curved_line_painter.dart';
import 'package:my_prtofolio/shared/seo_text.dart';
import 'package:my_prtofolio/shared/styled_card.dart';

class ServicesItem extends StatelessWidget {
  const ServicesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(context.insets.padding),
      child: Row(
        children: [
          Expanded(
            child: CustomCardServices(
              title: "Web Development",
              description:
                  "I am a web developer with experience in building modern and responsive websites.",
              imageUrl: "assets/images/me.jpg",
              buttonTitle: "See More",
            ),
          ),
          Gap(16),
          Expanded(
            child: CustomCardServices(
              title: "Web Development",
              description:
                  "I am a web developer with experience in building modern and responsive websites.",
              imageUrl: "assets/images/me.jpg",
              buttonTitle: "See More",
            ),
          ),
          Gap(16),
          Expanded(
            child: CustomCardServices(
              title: "Web Development",
              description:
                  "I am a web developer with experience in building modern and responsive websites.",
              imageUrl: "assets/images/me.jpg",
              buttonTitle: "See More",
            ),
          ),
        ],
      ),
    );
  }
}

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
    return Card(
      child: StyledCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 40,
              height: 40,

              child: Image.asset(imageUrl, fit: BoxFit.cover),
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
              style: context.textStyle.bodyMdMedium.copyWith(
                color: context.colorScheme.onBackground,
              ),
            ),
            Gap(10),

            ElevatedButton(
              onPressed: () {
                // هنا تكتب الأكشن لما تدوس على الزر
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // لون الزر
                foregroundColor: Colors.white, // لون الخط
                elevation: 5, // لمعان أو بروز الزر
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'See More',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            // PrimaryButton(
            //   backgroundColor: Colors.teal,
            //   title: buttonTitle,
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
