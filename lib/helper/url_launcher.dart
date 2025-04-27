import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> handleButtonClick({
  required BuildContext context,
  required String url,
  String? buttonText,
}) async {
  final Uri uri = Uri.parse(url);

  if (!context.mounted) return;

  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication, // دي مهمة جدًا خاصة للويب
    );
  } else {
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Could not launch ${buttonText ?? 'the link'}. Please try again.',
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
