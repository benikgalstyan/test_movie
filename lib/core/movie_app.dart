import 'package:flutter/material.dart';
import 'package:test_movie/presentation/pages/main_page/main_screen.dart';

class MovieApp extends StatefulWidget {
  const MovieApp({super.key});

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const MainScreen(),
      builder: (context, widget) => SafeArea(child: widget ?? const SizedBox()),
    );
  }
}
