import 'package:flutter/material.dart';
import 'package:test_movie/presentation/tokens/spacing.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    super.key,
    required this.rating,
  });

  final double rating;

  static const iconSize = 20.0;
  static const fontSize = 24.0;
  static const fillStarIcon = 'lib/icons/fill_star.png';
  static const halfStarIcon = 'lib/icons/half_star.png';
  static const emptyStarIcon = 'lib/icons/empty_star.png';

  @override
  Widget build(BuildContext context) {
    List<Widget> ratingIcons = [];

    for (int i = 0; i < 5; i++) {
      if (rating >= i + 1) {
        ratingIcons.add(Image.asset(fillStarIcon, width: iconSize));
      } else if (rating > i) {
        ratingIcons.add(Image.asset(halfStarIcon, width: iconSize));
      } else {
        ratingIcons.add(Image.asset(emptyStarIcon, width: iconSize));
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Movie ',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: Spacing.eightPX),
        Row(
          children: [
            Text(
              rating.toString(),
              style: const TextStyle(
                fontSize: fontSize,
              ),
            ),
            const SizedBox(width: Spacing.eightPX),
            ...ratingIcons,
          ],
        ),
      ],
    );
  }
}
