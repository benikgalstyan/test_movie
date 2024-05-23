import 'package:flutter/material.dart';
import 'package:test_movie/presentation/tokens/spacing.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({
    super.key,
    required this.genre,
    required this.description,
  });

  final String genre;
  final String description;

  static const fontSize = 14.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          genre,
          style: const TextStyle(
            fontSize: fontSize,
          ),
        ),
        const SizedBox(height: Spacing.eightPX),
        Text(
          _truncateDescription(description),
          style: const TextStyle(fontSize: fontSize, color: Color(0xFF888888)),
        ),
      ],
    );
  }

  String _truncateDescription(String description) {
    if (description.length <= 105) {
      return description;
    } else {
      return '${description.substring(0, 105)}...';
    }
  }
}
