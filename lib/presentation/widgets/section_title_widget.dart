import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? subtitle;
  final VoidCallback? onSubtitleTap;

  const SectionTitle({
    super.key,
    required this.title,
    this.subtitle,
    this.onSubtitleTap,
  });

  static const fontSize = 30.0;
  static const subtitleFontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: const TextStyle(
                  fontSize: fontSize,
                ),
              ),
              const TextSpan(
                text: ".",
                style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
        if (subtitle != null) const Spacer(),
        if (subtitle != null)
          GestureDetector(
            onTap: onSubtitleTap,
            child: Text(
              subtitle!,
              style: const TextStyle(
                fontSize: subtitleFontSize,
                color: Colors.yellow,
              ),
            ),
          ),
      ],
    );
  }
}
