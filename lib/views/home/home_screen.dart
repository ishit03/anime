import 'package:anime/views/home/widgets/animated_app_bar.dart';
import 'package:anime/views/home/widgets/anime_grid_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AnimatedAppBar(),
      body: AnimeGridView(),
    );
  }
}
