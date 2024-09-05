import 'package:anime/views/details/widgets/content_widget.dart';
import 'package:anime/views/details/widgets/info_chip.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';

class GenreSection extends StatelessWidget {
  const GenreSection({required this.genres, super.key});
  final List<Genre> genres;
  @override
  Widget build(BuildContext context) {
    return ContentWidget(
        title: 'Genre',
        content: genres.isNotEmpty
            ? Wrap(
                spacing: 5.0,
                runSpacing: 2.0,
                children: genres.map((genre) {
                  return InfoChip(text: genre.name!);
                }).toList(),
              )
            : const InfoChip(text: 'N/A'));
  }
}
