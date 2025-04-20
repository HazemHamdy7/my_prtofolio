import 'package:flutter/material.dart';
import 'package:my_prtofolio/helper/extensions.dart';
import 'package:my_prtofolio/shared/seo_text.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary,
        padding: EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[100]),
      ),
    );
  }
}

class OutLineButton extends StatelessWidget {
  const OutLineButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},

      child: SEOText(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: context.colorScheme.onSurface,
        ),
      ),
    );
  }
}
