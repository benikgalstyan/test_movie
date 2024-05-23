import 'package:flutter/material.dart';
import 'package:test_movie/presentation/tokens/spacing.dart';
import 'package:test_movie/presentation/widgets/app_bar_widget.dart';
import 'package:test_movie/presentation/widgets/horizontal_movie_card_widget.dart';
import 'package:test_movie/presentation/widgets/movie_description_widget.dart';
import 'package:test_movie/presentation/widgets/movie_info_widget.dart';
import 'package:test_movie/presentation/widgets/section_title_widget.dart';
import 'package:test_movie/presentation/widgets/vertical_movie_card_widget.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  static const itemOfTopMovies = 5;
  static const listViewSize = 300.0;
  static const rateOfTopMovies = 3.5;
  static const itemOfLatestMovies = 6;
  static const rateOfLatestMovies = 4.0;
  final mockedGenres = 'Action, Comedy, Crime';
  static const screenPadding = EdgeInsets.symmetric(horizontal: 14);
  final mockedDescription =
      'The worlds most lethal odd couple - bodyguard Michael Bryce and hitman Darius Kincaid - are back on another mission...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Top Five'),
      backgroundColor: Colors.black,
      body: Padding(
        padding: screenPadding,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(height: Spacing.sixteenPX),
            SizedBox(
              height: listViewSize,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemOfTopMovies,
                itemBuilder: (context, index) {
                  return const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HorizontalMovieCard(),
                      MovieInfo(rating: rateOfTopMovies),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: Spacing.twentyFourPX),
            SectionTitle(
              title: 'Latest',
              subtitle: 'SEE MORE',
              onSubtitleTap: () {
                // TODO: Implement onSubtitleTap
              },
            ),
            const SizedBox(height: Spacing.twentyFourPX),
            SizedBox(
              height: listViewSize,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: itemOfLatestMovies,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const VerticalMovieCard(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const MovieInfo(rating: rateOfLatestMovies),
                            MovieDescription(genre: mockedGenres, description: mockedDescription),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
