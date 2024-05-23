import 'package:flutter/material.dart';
import 'package:test_movie/presentation/tokens/spacing.dart';
import 'package:test_movie/presentation/widgets/section_title_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon;

  const AppBarWidget({required this.title, this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          if (icon != null) Icon(icon),
          const SizedBox(width: Spacing.eightPX),
          SectionTitle(
            title: title,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
