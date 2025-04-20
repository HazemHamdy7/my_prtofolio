import 'package:flutter/material.dart';

class SEOText extends StatelessWidget {
  const SEOText(this.text, {super.key, this.style});
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
