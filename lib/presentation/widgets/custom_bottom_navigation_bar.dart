import 'package:flutter/material.dart';
import 'package:test_movie/config/theme/theme_palette/default_palette.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  static const iconWidth = 20.0;
  static const iconHeight = 20.0;
  static const bookmarkIconHeight = 24.0;

  static const homeIcon = 'lib/icons/home.png';
  static const searchIcon = 'lib/icons/search.png';
  static const bookmarkIcon = 'lib/icons/bookmark.png';
  static const homeIconActive = 'lib/icons/home_active.png';
  static const searchIconActive = 'lib/icons/search_active.png';
  static const bookmarkIconActive = 'lib/icons/bookmark_active.png';

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: DefaultPalette.backgroundColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 0 ? homeIconActive : homeIcon,
            width: iconWidth,
            height: iconHeight,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 1 ? searchIconActive : searchIcon,
            width: iconWidth,
            height: iconHeight,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 2 ? bookmarkIconActive : bookmarkIcon,
            width: iconWidth,
            height: bookmarkIconHeight,
          ),
          label: "",
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}
