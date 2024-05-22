import 'package:flutter/material.dart';
import 'package:test_movie/presentation/tokens/spacing.dart';

class HorizontalMovieCard extends StatelessWidget {
  const HorizontalMovieCard({super.key});

  static const fontSize = 24.0;
  static const iconSize = 30.0;
  static const widthOfCard = 300.0;
  static const heightOfCard = 200.0;
  static const carouselItemCount = 5;
  static const carouselHeight = 300.0;
  static const bookmarkPositionedTop = 25.0;
  static const bookmarkPositionedRight = 15.0;
  static const cardPadding = EdgeInsets.only(right: 12.0);
  static const cardBorderRadius = BorderRadius.all(Radius.circular(15.0));

  static const bookmarkIcon = 'lib/icons/bookmark.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const Card(
                color: Colors.grey,
                // TODO(Benik): Change from color to  movie image
                shape: RoundedRectangleBorder(
                  borderRadius: cardBorderRadius,
                ),
                child: SizedBox(
                  width: widthOfCard,
                  height: heightOfCard,
                ),
              ),
              Positioned(
                right: bookmarkPositionedRight,
                top: bookmarkPositionedTop,
                child: GestureDetector(
                  onTap: () {
                    // TODO(Benik): Implement bookmark tap
                  },
                  child: Image.asset(
                    bookmarkIcon,
                    width: iconSize,
                    height: iconSize,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Spacing.eightPX),
        ],
      ),
    );
  }
}
