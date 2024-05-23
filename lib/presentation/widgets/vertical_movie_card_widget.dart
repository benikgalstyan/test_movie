import 'package:flutter/material.dart';
import 'package:test_movie/presentation/tokens/spacing.dart';

class VerticalMovieCard extends StatelessWidget {
  final String? imagePath;

  const VerticalMovieCard({super.key, this.imagePath});

  static const iconSize = 30.0;
  static const widthOfCard = 182.0;
  static const heightOfCard = 273.0;
  static const grayColor = Colors.grey;
  static const bookmarkPositionedTop = 25.0;
  static const bookmarkPositionedRight = 15.0;
  static const cardPadding = EdgeInsets.only(bottom: 12.0);
  static const cardBorderRadius = BorderRadius.all(Radius.circular(15.0));
  static const placeholderImage = 'lib/icons/gray_placeholder.png';
  static const bookmarkIcon = 'lib/icons/bookmark.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cardPadding,
      child: Row(
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
          const SizedBox(width: Spacing.eightPX),
        ],
      ),
    );
  }
}
