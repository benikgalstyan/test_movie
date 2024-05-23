import 'package:flutter/material.dart';
import 'package:test_movie/presentation/tokens/spacing.dart';

class HorizontalMovieCard extends StatelessWidget {
  final String? imagePath;

  const HorizontalMovieCard({super.key, this.imagePath});

  static const iconSize = 30.0;
  static const widthOfCard = 300.0;
  static const heightOfCard = 200.0;
  static const grayColor = Colors.grey;
  static const bookmarkPositionedTop = 25.0;
  static const bookmarkPositionedRight = 15.0;
  static const bookmarkIcon = 'lib/icons/bookmark.png';
  static const cardPadding = EdgeInsets.only(right: 12.0);
  static const cardBorderRadius = BorderRadius.all(Radius.circular(15.0));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cardPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: widthOfCard,
                height: heightOfCard,
                decoration: BoxDecoration(
                  color: imagePath == null ? grayColor : null,
                  borderRadius: cardBorderRadius,
                  image: imagePath != null
                      ? DecorationImage(
                          image: AssetImage(imagePath!),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: imagePath == null
                    ? const Center(
                        child: Icon(
                          Icons.error,
                        ),
                      )
                    : null,
              ),
              if (imagePath != null)
                Positioned(
                  right: bookmarkPositionedRight,
                  top: bookmarkPositionedTop,
                  child: GestureDetector(
                    onTap: () {
                      // TODO: Implement bookmark tap
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
