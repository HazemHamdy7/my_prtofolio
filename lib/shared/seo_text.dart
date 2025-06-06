import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class SEOText extends StatelessWidget {
  const SEOText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.textRenderStyle,
    this.maxLines,
    this.overflow,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  final TextRendererStyle? textRenderStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
